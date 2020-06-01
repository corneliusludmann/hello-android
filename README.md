[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/corneliusludmann/hello-android)

# hello-android
Simple Hello World Android app for testing and demo purposes.

## Getting Started

**Build** this app:
```shell
$ ./gradlew build
```
or
```shell
$ fastlane build
```

Deploy the app to Appetize.io in order to get a **preview** of the app in a web browser (online Android emulator):
```shell
$ export APPETIZE_API_TOKEN=replace-with-your-token
$ export APPETIZE_PUBLICKEY=replace-with-existing-publickey # optional, after first deploy
$ fastlane preview
```

Get your Appetize API Token at https://appetize.io/docs#request-api-token. After the first publish of the app you get a public key. Set environment variable `APPETIZE_PUBLICKEY` to update the existing app instead of creating a new app.

## Gitpod

Open this repo in [Gitpod Online IDE](https://gitpod.io) to get a ready-to-code dev environment for this app: https://gitpod.io/#https://github.com/corneliusludmann/hello-android

Set Appetize API Token as environment variable in order to get a preview of the Android app in Gitpod. Run
```shell
gp env APPETIZE_API_TOKEN=replace-with-your-token
```
in a running Gitpod workspace of this repo and restart your workspace or go to https://gitpod.io/settings/ and add the environment variable for this repo accordingly.

## Links
- [Android Developer](https://developer.android.com/)
- [Android Developer Guides](https://developer.android.com/guide)
- [Android Developer Guides: Build your first app](https://developer.android.com/training/basics/firstapp)
- [Android sdkmanager user guide](https://developer.android.com/studio/command-line/sdkmanager)
- [fastlane Docs](https://docs.fastlane.tools/)
