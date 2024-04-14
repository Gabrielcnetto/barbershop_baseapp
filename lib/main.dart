import 'package:barbershop_baseapp/classes/Estabelecimento.dart';
import 'package:barbershop_baseapp/functions/createAccount.dart';
import 'package:barbershop_baseapp/rotas/Approutes.dart';
import 'package:barbershop_baseapp/screen/inicio/initialScreen.dart';
import 'package:barbershop_baseapp/screen/login/loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/login/registerAccount.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(
          create: (_) => CreateAccount(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Estabelecimento.nomeLocal,
        routes: {
          AppRoutesApp.InitialScreenApp: (ctx) => InitialScreenApp(),
          AppRoutesApp.LoginScreen01: (ctx) => LoginScreen01(),
          AppRoutesApp.RegisterAccountScreen: (ctx) => RegisterAccountScreen(),
        },
      ),
    );
  }
}
