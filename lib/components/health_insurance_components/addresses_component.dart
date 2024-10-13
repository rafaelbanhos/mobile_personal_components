import 'package:flutter/material.dart';

class AddressesComponent extends StatelessWidget {
  final String city;
  final String street;
  final String postalCode;

  AddressesComponent(this.city, this.street, this.postalCode);

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
                padding: const EdgeInsets.all(10.0),
                child: Text(street,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(city,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(postalCode,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12)),
              ),
            ],
          ),
        ));
  }
}
