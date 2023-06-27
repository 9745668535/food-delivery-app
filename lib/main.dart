import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfoodcart/dash_home/provider/getItemsProvider.dart';
import 'package:myfoodcart/dashboard/provider/itemListProvider.dart';
import 'package:provider/provider.dart';

import 'onboarding_screens/provider/login_provider.dart';
import 'onboarding_screens/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>(
          create: (context) => LoginViewModel(),
        ),
        ChangeNotifierProvider<GetItemsProvider>(
          create: (context) => GetItemsProvider(),
        ),
        ChangeNotifierProvider<ItemProvider>(
          create: (context) => ItemProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

