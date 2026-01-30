import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app_permission_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PermissionCard(
          permission: Permission.camera,
          icon: Icons.camera_alt,
        ),
      ),
    );
  }
}
