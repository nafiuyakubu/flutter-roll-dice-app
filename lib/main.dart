import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart'; // import 'gradient_container.dart';

//The main() function is specifal function which will be executed automatically no need to call it Manually.
//Crucial function 'runApp(MyApp())' used to start the execution of a Flutter application
//by binding the top-level widget to the Flutter framework. Functions are like code on Demand
//Short Way to Write using Lambda/Arrow/Anonymous Function [void main() => runApp(MyApp());]
//Use the ("Const") Keyword to improve Performance
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 122, 57, 207),
            Color.fromARGB(255, 53, 145, 216)),
      ),
    );
  }
}


/*
//////////////////**** Folder Stucture ****////////////////
android: [Contains Android-specific code and configurations.]
assets: [Stores static files like images, fonts, and other resources used by the app.]
ios: [Holds iOS-specific code, including the Xcode project and native code.]
lib: [Contains Dart code files defining app structure and logic.]
test: [Houses test files for unit, widget, and integration testing.]
web: [Contains web-specific files for deploying Flutter apps.]
pubspec.yaml: [YAML file managing project metadata and dependencies.]
.dart_tool and .idea: [Directories for Dart-related tools and IDE configurations.]
build, .flutter-plugins, .packages:[] Folders storing build artifacts and package configurations.]
*/