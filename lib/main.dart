import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/router.dart';
import 'features/auth/screens/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const CreateProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
