# kal_app

A new Flutter project.

## Firebase

Even if this project is open-source, there are things that can not be shared. This is the reason why you can not compile your app from this repository and expect it to work with the official kal server. This is due to the fac that this project uses [Firebase](https://firebase.google.com/) to handle authentication. This reveal a few configuration files that must stay private and not shown in this repository. Those files are:

- `android/app/google-services.json`
- `ios/firebase_app_id_file.json`
- `ios/Runner/GoogleService-Info.plist`

To compile your own app and get it working, you'll need to configure your own Firebase project.
For this, take a look at https://firebase.google.com/docs/flutter/setup
After creating your Firebase project and installing firebase on your local machine,
running `flutterfire configure` should create the necessary files.
