import 'package:firebase_core/firebase_core.dart';
import 'package:flex_pozivnica_za_kurira/overall_price.dart';
import 'package:flex_pozivnica_za_kurira/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyA95B_llwEBBzQwliJRcsD-d8f9qRDi0kQ",
        authDomain: "flexpozivnicazakurira.firebaseapp.com",
        projectId: "flexpozivnicazakurira",
        storageBucket: "flexpozivnicazakurira.appspot.com",
        messagingSenderId: "337659174249",
        appId: "1:337659174249:web:0c20f334b0e0856f0bf1f8",
        measurementId: "G-FH746PSDQD"
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OverallPrice()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MainScreen(),
    );
}
}
