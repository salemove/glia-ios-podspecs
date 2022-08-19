module Fastlane
  class Podspec
    def initialize(attributes:, spec_variable_name: 's')
      @spec_variable_name = spec_variable_name

      @attributes = attributes
      @attributes[:module_name] = @attributes[:name]
      @attributes[:license] = { :type => 'MIT', :file => 'LICENSE' } unless @attributes.has_key? :license
      @attributes[:author] = { 'Glia' => 'support@glia.com' } unless @attributes.has_key? :author
      @attributes[:deployment_target] = '12.0' unless @attributes.has_key? :deployment_target
      @attributes[:swift_version] = '5.3' unless @attributes.has_key? :swift_version
    end

    def to_lines
      lines = @attributes.keys.map { |key| get_line(attribute: key) unless key == :dependencies }.compact

      # Added exclusively for nicer formatting, to have a break
      # between the other metadata and the dependencies.
      lines << ""

      if @attributes.has_key? :dependencies
        get_dependency_lines.each { |line| lines << line}
      end

      lines
    end

    def name
      @attributes[:name]
    end

    def version
      @attributes[:version]
    end

    private

    def get_line(attribute:)
      prefix = get_prefix(attribute: attribute)
      line = "#{prefix} = "
      value = @attributes[attribute]

      if value.is_a? String
        line += "'#{value}'"
      else
        line += "#{value}"
      end

      line
    end

    def get_dependency_lines
      @attributes[:dependencies].map { |dependency|
        prefix = get_prefix(attribute: "dependency")

        "#{prefix} '#{dependency[:name]}', '#{dependency[:version]}'"
      }
    end

    def get_prefix(attribute:)
      "#{@spec_variable_name}.#{attribute}"
    end
  end
end
