SEMVER=$1
BRANCH_NAME=$2

# Create podspec for new Core SDK release
git checkout -b "$BRANCH_NAME"
mkdir ../SalemoveSDK/$SEMVER
cp -f templates/SalemoveSDK.podspec ../SalemoveSDK/$SEMVER/SalemoveSDK.podspec
sed -i '' "s/\${CORE_SDK_VERSION_SEMVER}/$SEMVER/" "../SalemoveSDK/$SEMVER/SalemoveSDK.podspec"

# Update Widgets SDK template with new Core SDK version
sed -i '' "s/.*SalemoveSDK.*/  s.dependency 'SalemoveSDK', '$SEMVER'/" "templates/GliaWidgets.podspec"

# Create commit and push to origin
git add -A
git commit -m "Add Core SDK podspec for version $SEMVER"
git push origin "$BRANCH_NAME":"$BRANCH_NAME"
