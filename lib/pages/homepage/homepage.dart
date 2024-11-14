import 'package:flutter/material.dart';
import 'package:wallet/pages/homepage/containers/header.dart';
import 'package:wallet/pages/homepage/recharge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          SizedBox(
            height: 30,
          ),
          Recharge()
        ],
      ),
    );
  }
}
