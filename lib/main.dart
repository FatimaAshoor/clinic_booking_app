import 'package:clinic_booking_app/ui/screens/Auth/login_screen.dart';
import 'package:clinic_booking_app/ui/screens/Auth/signin_screen.dart';
import 'package:clinic_booking_app/ui/screens/User%20Screen%20Folder/Admin/home_page_admin.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized(); // اضافة سطر تهيئة الفاير بيس لتفادي خطأ تهيئة الفايربيس عند عمل تشغيل للبرنامج

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      initialRoute: "login",
      routes: {
          "login" : (context)=> LoginScreen(),
        "signin" : (context)=> SignInScreen(),
        "adminHome" : (context)=> HomePageAdmin(),
      },

    );
  }
}
