import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webproject/provider.dart';

import 'Registeration.dart';

Future<void> main() async {


    await Firebase.initializeApp(
        options:const FirebaseOptions(
            apiKey: "AIzaSyB85d5B6pThsjMejQL96EZH7gxn8LyVnH0",
            authDomain: "webproject-c5564.firebaseapp.com",
            projectId: "webproject-c5564",
            storageBucket: "webproject-c5564.appspot.com",
            messagingSenderId: "359203343642",
            appId: "1:359203343642:web:a7d60b07dc89ade698b0a3",
            measurementId: "G-W0MYK8HVMG"
        ));
    runApp(const MyApp());

  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Register(),
      ),
    );
  }
}

