import 'package:nirvanafoods_admin_panel_webapp/authentication/login_screen.dart';
import 'package:nirvanafoods_admin_panel_webapp/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyC6FoOYTCEsTg6usec--ldRa48moqV-cw4",
        appId: "1:904111637056:web:e426ed6d2b54b0022f95a5",
        messagingSenderId: "904111637056",
        projectId: "nirvana-foods-d9ef5",
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
