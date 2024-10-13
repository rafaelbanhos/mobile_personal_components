import 'package:flutter/material.dart';

class ButtonType extends StatelessWidget {
  final IconData icon;
  final String text;

  ButtonType(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color.fromRGBO(6, 176, 188, 1),
              size: 30,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        color: Color.fromRGBO(51, 51, 51, 1),
      ),
    );
  }
}
