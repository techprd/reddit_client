import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_client/screens/home.dart';

void main() {
  runApp(const MyApp());
}

// lets run the app and see demo app
// once your app is running, you can see the app in the device
// and any changes you make to the app will be reflected in the device

// we begin by removing the template code for the home page
// and replacing it with a new one that uses a Scaffold
// to provide a Material Design look and feel
// lets create a new package for screens widgets and contains a new folder named components
// which will contain the widgets that we will use in our app
// we will create a new file named home.dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Home Page'),
    );
  }
}
