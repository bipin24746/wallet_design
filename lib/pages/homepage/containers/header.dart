import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
            'lib/assets/smartphones.jpg',
          ),
        ),
        title: Text("Moru"),
      ),

      // child: ClipOval(
      //   child: Container(
      //     color: Colors.blue,
      //     child: Image.asset(
      //       'lib/assets/smartphones.jpg',
      //       width: 70,
      //       height: 100,
      //     ),
      //   ),
      // ),
    );
  }
}
