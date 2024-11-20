import 'package:flutter/material.dart';
import 'package:wallet/logindetails/signup.dart';
import 'package:wallet/pages/homepage/bottom_navbar.dart';
import 'package:wallet/pages/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: const BuildBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define your QR Code button action here
          print('QR Code button pressed');
        },
        child: const Icon(Icons.qr_code),
      ),
    );
  }
}
