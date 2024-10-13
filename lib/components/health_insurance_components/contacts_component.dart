import 'package:flutter/material.dart';

class ContactsComponent extends StatelessWidget {
  final String contact;
  final String internalDescription;

  ContactsComponent(this.contact, this.internalDescription);

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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    internalDescription == 'Telefone'
                        ? Icon(Icons.phone)
                        : Icon(Icons.mail),
                    SizedBox(
                      width: 10,
                    ),
                    Text(internalDescription,
                        style: TextStyle(
                          color: Color.fromRGBO(23, 59, 86, 1),
                          fontSize: 12,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(contact,
                    style: TextStyle(color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12)),
              )
            ],
          ),
        ));
  }
}
