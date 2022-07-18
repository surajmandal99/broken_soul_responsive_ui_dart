import 'package:flutter/material.dart';
import 'package:responsive_ui_dart/responsive/desktop_scaff.dart';
import 'package:responsive_ui_dart/responsive/mobile_scaffold.dart';
import 'package:responsive_ui_dart/responsive/responsive_layout.dart';
import 'package:responsive_ui_dart/responsive/tablet_scaff.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tableScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
