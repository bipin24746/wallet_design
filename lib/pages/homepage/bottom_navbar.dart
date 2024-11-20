import 'package:flutter/material.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({super.key});

  @override
  State<BuildBottomNavBar> createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(border: Border.all()),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_outlined,
                size: 50,
              ),
              Icon(
                Icons.receipt_outlined,
                size: 50,
              ),
              Icon(
                Icons.house_outlined,
                size: 50,
              ),
              Icon(
                Icons.more_horiz_outlined,
                size: 50,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
