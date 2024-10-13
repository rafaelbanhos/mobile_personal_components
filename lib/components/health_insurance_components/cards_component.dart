import 'package:flutter/material.dart';

class CardsComponent extends StatelessWidget {
  final String number;
  final String expireDate;

  CardsComponent(this.number, this.expireDate);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          height: 120,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Image.asset(
                  'assets/images/logoG.png',
                  scale: 40,
                  color: Color.fromRGBO(23, 59, 86, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Text(
                  'Number: ' + number,
                  style: TextStyle(
                      color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Expire date: ' + expireDate,
                  style: TextStyle(
                      color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12),
                ),
              )
            ],
          ),
        ));
  }
}
