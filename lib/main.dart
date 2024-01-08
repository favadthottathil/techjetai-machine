import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techjetai/controller/auth_controller.dart';
import 'package:techjetai/controller/nav_menu_controller.dart';
import 'package:techjetai/firebase_options.dart';
import 'package:techjetai/view/sign_in_screen.dart';

void main() async{

  // Initialize Flutter
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavMenuController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SignInScreen(),
      ),
    );
  }
}
