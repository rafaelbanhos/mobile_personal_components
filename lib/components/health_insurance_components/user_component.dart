import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  final String name;

  UserComponent(this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
          color: Color.fromRGBO(80, 183, 213, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Container(
            height: 80,
            width: 80,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
