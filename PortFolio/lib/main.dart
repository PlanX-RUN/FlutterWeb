import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web/mobile/mhome.dart';
import 'package:web/pc/home.dart';

void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'DEVELOPER ERIC',
      home: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < 1000)
          {
            return MobileHomePage();
          }
          return HomePage();
        },
      ),
    );
  }
}
