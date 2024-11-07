import 'package:flutter/material.dart';
import 'package:moru_wallet_desing/pages/homepage/containers/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/smartphones.jpg'),
          ),
        ),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text("Moru"),
        )),
        actions: [
          Icon(
            Icons.notifications,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
