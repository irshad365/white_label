#!/bin/bash

#!/bin/bash

# Define flavor names
FLAVOR=$1

# Check if the flavor is valid
if [[ "$FLAVOR" != "qwe" && "$FLAVOR" != "asd" && "$FLAVOR" != "zxc" ]]; then
    echo "Invalid flavor! Please choose from: qwe, asd, zxc"
    exit 1
fi

# Remove any existing generic assets
echo "Preparing assets for flavor: $FLAVOR"
rm -rf assets/images

# Copy flavor-specific assets
cp -r assets/$FLAVOR/images assets/images

# Clean and get dependencies
echo "Cleaning and fetching dependencies..."
flutter clean
flutter pub get

# Build the app for the specified flavor
echo "Building app for flavor: $FLAVOR"
flutter build apk --flavor $FLAVOR

echo "Build completed for flavor: $FLAVOR"


# ./build.sh asd
# ./build.sh qwe
# ./build.sh zxc
