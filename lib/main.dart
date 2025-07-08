import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
// import 'package:untitleddoctor/feature/chat/view/chat_screen.dart';
// import 'package:untitleddoctor/feature/chat/view/mean_chat_screen.dart';

import 'feature/splash/presentation/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorManager.primaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 896), // oppo reno 6
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF0EBE7F),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0EBE7F),
            foregroundColor: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xFF0EBE7F),
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0EBE7F)),
        ),
        home: SplashScreen(),
        // home: MeanChatScreen(),
      ),
    );
  }
}
