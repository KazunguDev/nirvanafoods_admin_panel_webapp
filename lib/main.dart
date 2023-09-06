import 'package:nirvanafoods_admin_panel_webapp/authentication/login_screen.dart';
import 'package:nirvanafoods_admin_panel_webapp/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "XXX",
        appId: "XXX",
        messagingSenderId: "XXX",
        projectId: "XXX",
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nirvana Foods Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}
