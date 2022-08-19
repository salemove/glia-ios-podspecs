require 'fileutils'

module Fastlane
  module Actions
    module SharedValues
      GENERATE_PODSPEC_CUSTOM_VALUE = :GENERATE_PODSPEC_CUSTOM_VALUE
    end

    class GeneratePodspecAction < Action
      def self.run(params)
        podspec = params[:podspec]
        create_podspec_directory(podspec: podspec)
        route = podspec_route(podspec: podspec)

        begin
          file = File.new(route, 'w')
          file.write("Pod::Spec.new do |s|\n")
          podspec.to_lines.each { |line| file.write("  #{line}\n")}
          file.write("end\n")
        rescue StandardError => e
          UI.error "Error writing file #{e}"
        ensure
          file.close unless file.nil?
        end
      end

      private_class_method def self.podspec_directory(podspec:)
        name = podspec.name
        version = podspec.version

        "#{name}/#{version}"
      end

      private_class_method def self.create_podspec_directory(podspec:)
        directory = podspec_directory(podspec: podspec)
        FileUtils.mkdir_p(directory)
      end

      private_class_method def self.podspec_route(podspec:)
        directory = podspec_directory(podspec: podspec)
        name = podspec.name

        "#{directory}/#{name}.podspec"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Generate a podspec file based on the podspec object received as a parameter. "\
        "This file will be saved in the following path: [name]/[version]/[name].podspec"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :podspec,
            env_name: "FL_GENERATE_PODSPEC_PODSPEC",
            description: "The podspec object to be used for the podspec file generation",
            is_string: false
          )
        ]
      end

      def self.authors
        ["Glia Technologies"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
