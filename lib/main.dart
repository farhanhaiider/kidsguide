import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kidsguide/firebase_options.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/login.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/signup.dart';
import 'package:kidsguide/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(436, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "My App",
            initialRoute: '/splashscreen',
            routes: {
              '/splashscreen': (context) => const SplashScreen(),
              '/login': (context) => const Loginscreen(),
              '/Signup': (context) => const signup(),

              // Add more routes here as needed
            },
          );
        });
  }
}
