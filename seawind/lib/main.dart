
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seawind/SEAWINDTASK/SplashScreen.dart';



void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,  
    );
  runApp((MyApp()),
    
    // MyApp(),
    
  );
}

class DefaultFirebaseOptions {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashscreenEvent(),
    );
  }
}