SEMVER=$1
BRANCH_NAME=$2

git checkout -b "$BRANCH_NAME"
mkdir ../SalemoveSDK/$SEMVER
cp -f templates/SalemoveSDK.podspec ../SalemoveSDK/$SEMVER/SalemoveSDK.podspec
sed -i '' "s/\${CORE_SDK_VERSION_SEMVER}/$SEMVER/" "../SalemoveSDK/$SEMVER/SalemoveSDK.podspec"

git add -A
git commit -m "Add Core SDK podspec for version $SEMVER"
git push origin "$BRANCH_NAME":"$BRANCH_NAME"
