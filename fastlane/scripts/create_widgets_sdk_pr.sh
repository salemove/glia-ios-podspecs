SEMVER=$1
BRANCH_NAME=$2

# Create podspec for new Widgets SDK release
git checkout -b "$BRANCH_NAME"
mkdir ../GliaWidgets/$SEMVER
cp -f templates/GliaWidgets.podspec ../GliaWidgets/$SEMVER/GliaWidgets.podspec
sed -i '' "s/\${WIDGETS_SDK_VERSION_SEMVER}/$SEMVER/" "../GliaWidgets/$SEMVER/GliaWidgets.podspec"

# Create commit and push to origin
git add -A
git commit -m "Add Widgets SDK podspec for version $SEMVER"
git push origin "$BRANCH_NAME":"$BRANCH_NAME"
