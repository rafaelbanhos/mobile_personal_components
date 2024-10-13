import 'package:flutter/material.dart';

class CoveragesComponent extends StatelessWidget {
  final String description;
  final int percentage;

  CoveragesComponent(this.description, this.percentage);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          height: 70,
          width: 180,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 59, 86, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$percentage%',
                  style: TextStyle(
                      color: Color.fromRGBO(23, 59, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
