# Flutter Web Training 🌐

[![Codemagic build status](https://api.codemagic.io/apps/63ea1ecf46f7d12ff5711b7b/63ea1ecf46f7d12ff5711b7a/status_badge.svg)](https://codemagic.io/apps/63ea1ecf46f7d12ff5711b7b/63ea1ecf46f7d12ff5711b7a/latest_build)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)]()
![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)
![GitHub release](https://img.shields.io/badge/release-v1.0.0-blue)
[![View DEMO](https://img.shields.io/badge/VIEW-DEMO-lightgreen.svg)](https://flutter-web-training-om.web.app/)

This project is a part of the Flutter Web training
The main goal of the project is to demonstrate the core functionality of the Flutter Web

## Project info
- Build with Flutter 3.7.0
- Supports both mobile and web platforms
- Supports routing for web and mobile
- Uses [dummyapi](https://dummyapi.io/docs) as a data source
- Uses [Firebase](https://firebase.google.com/) for a hosting
- Uses [Sentry](https://sentry.io/) for error tracking
- Uses [Codemagic](https://codemagic.io/) for CI/CD

## Demo
[Web page](https://flutter-web-training-om.web.app/#/) which showcases the core functionality of the app with all screens developed yet.

## How to run
- Clone the project
```shell
$ git clone https://gitlab.extrawest.com/i-training/flutter/oleksii.melnychenko_flutter_web_training.git your_project_name
```
- Go to the project folder
```shell
$ cd your_project_name
```
- Install dependencies
```shell
$ flutter pub get
```
- Proceed with the [Firebase](https://firebase.google.com/) setup
```shell
 $ flutterfire configure
```
- Create config.json file in the assets folder at the root of the project with the followed contents:
```shell
$ touch assets/config.json

config.json file content:

{
  "apiDomain": "domain for the dummyapi.io",
  "apiKey": "your api key here",
  "dsn": "your dsn from sentry.io"
}

```

- Run the app
```shell
$ flutter run
```

## In order to deploy the app to the Firebase
- Create a new project in the [Firebase](https://firebase.google.com/)
- Build the app for the web
- run the following command and proceed with the setup for only hosting
```shell
$ firebase init
```
- select __build/web__ as a public directory
- run the following command to deploy the app
```shell
$ firebase deploy --only hosting --token <your_token>
```

## To create new sentry release
- Create a new project if you don't have one in the [Sentry](https://sentry.io/)
- Add environment variables __SENTRY_AUTH_TOKEN__, __SENTRY_ORG__ and __SENTRY_PROJECT__ with proper values
- Run the following command
```shell
$ sentry-cli releases new <release_name>
```

#### Maintained by *Lesha Melnychenko*
