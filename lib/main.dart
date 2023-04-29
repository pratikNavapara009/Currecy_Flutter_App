import 'package:currency_convertor_flutter_app/helpers/themecontroller.dart';
import 'package:currency_convertor_flutter_app/views/screens/HomePage.dart';
import 'package:currency_convertor_flutter_app/views/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "Splash",
          theme: ThemeData.light(
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          themeMode: (Provider.of<ThemeProvider>(context).light.isDark == false)
              ? ThemeMode.light
              : ThemeMode.dark,
          routes: {
            '/': (context) => const HomePage(),
            'Splash': (context) => const Splash(),
          },
        );
      },
    ),
  );
}
