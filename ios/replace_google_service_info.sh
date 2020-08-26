#! /bin/bash

if [[ $CONFIGURATION == *"Local"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-Local.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"Prod"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-Prod.plist $PRODUCT_NAME/GoogleService-Info.plist
else
    echo "configuration didn't match to Local or Prod"
    echo $CONFIGURATION
    exit 1
fi

