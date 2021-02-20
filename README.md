# Unofficial Swift Package for GoogleUserMessagingPlatform

Currently Google doesn't provide GoogleUserMessagingPlatform as Swift package.  
This repogitory is alternate for using that as Swift package.  
For security reasons, I hope that Google will officially provide the package.

## Required Settings

- If you're using Xcode 12.0, and have an issue with device installation or archive uploading, see the workaround like official Firebase SPM  
https://github.com/firebase/firebase-ios-sdk/issues/6472#issuecomment-694449182

Add the following script to `Scheme -> Build -> Post-actions`.
```sh
rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app/Frameworks/UserMessagingPlatform.framework"
```

## Official Information
https://developers.google.com/admob/ump/ios/download  
There are release notes, terms of service, SDK binary and more.  
You can download official xcframework and construct your own Swift package safely.  