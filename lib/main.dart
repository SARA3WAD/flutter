import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/prayertimeprovider.dart';
import 'package:sara/Providers/randomuserprovider.dart';
import 'package:sara/Providers/todolistprovider.dart';
import 'package:sara/Screens/Signin.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ToDoListProvider(),),
    ChangeNotifierProvider(create: (context) => PrayerTimeProvider(),),
    ChangeNotifierProvider(create: (context) => RandomUserProvider(),)
  ],child: MyApp(),));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}
