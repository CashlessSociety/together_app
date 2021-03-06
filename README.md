# Together App

By CashlessSociety

## Getting Started

This project is a mobile application built with Flutter.

Prerequisite:

- [Install Flutter (SDK 2.10.2)](https://docs.flutter.dev/get-started/install)
- [Set up an editor for development](https://docs.flutter.dev/get-started/editor)

Clone the project to your local machine to start development.

## Connect to a GraphQL Server

Create `.env.prod` and `.env.dev` to store variables to access your GraphQL server.

- Use config `Run (env prod)` to apply .env.prod file for production environment.
- Use config `Run (env dev)` to apply .env.dev file for development environment.

.env file example:

    GRAPHQL_ENDPOINT=https://***.cloud.dgraph.io/graphql
    GRAPHQL_AUTH_HEADER=Dg-Auth
    GRAPHQL_AUTH_API_KEY=******

The app uses [graphql](https://pub.dev/packages/graphql) and
[graphql_flutter](https://pub.dev/packages/graphql_flutter)
packages for GraphQL server connection (currently
[Dgraph Cloud](https://cloud.dgraph.io/)), query & mutation operations, and UI display & update.

The GraphQL schema related files are stored in:

    lib/graphql/schema
    lib/graphql/mutation
    lib/graphql/query
    lib/graphql/fragment

For code-generation tool from GraphQL to Dart/Flutter, check out
the [graphql_codegen](https://pub.dev/packages/graphql_codegen) package. Run the following command if there are any
changes to the .graphql files.

    flutter packages pub run build_runner build

## Customize font awesome flutter

The [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) package is used for providing icon assets in
the app. The app was set up in a way that icons are dynamically retrieved, so for more info check out
this [link](https://pub.dev/packages/font_awesome_flutter#customizing-font-awesome-flutter).

In short, run the following commands to install all dependencies for the package:

    cd font_awesome_flutter
    flutter pub get

## Configure AWS Amplify

The app uses [amplify_flutter](https://pub.dev/packages/amplify_flutter) package from AWS for media file storage. Check
out these links on how to configure it in this project.

- [Configure Amplify Flutter](https://docs.amplify.aws/start/q/integration/flutter/)
- [Add Amplify Storage to the project](https://docs.amplify.aws/lib/storage/getting-started/q/platform/flutter/)

The app also uses AWS CloudFront for serving media files, so please set up your own CDN service and add this line
to `.env.prod` and `.env.dev` files. For example:

    AWS_CLOUDFRONT_DOMAIN=d**********x.cloudfront.net

Check out the `toCdnUrl` function in `lib/utils/constants.dart` for more info on how the CDN domain is used.

## Build and Run

To build and run the application, follow this step

- [Test drive - Run the app](https://docs.flutter.dev/get-started/test-drive?tab=androidstudio)

## More on Flutter

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a
full API reference.
