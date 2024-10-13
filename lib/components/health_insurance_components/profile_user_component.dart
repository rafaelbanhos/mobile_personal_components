import 'package:flutter/material.dart';

class ProfileUserComponent extends StatelessWidget {
  final String name;
  final String birthDate;

  ProfileUserComponent(this.name, this.birthDate);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                height: 90,
                width: 90,
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Color.fromRGBO(23, 59, 86, 1),
                    size: 40,
                  ),
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    //overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color.fromRGBO(23, 59, 86, 1)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(birthDate,
                      style: TextStyle(color: Color.fromRGBO(23, 59, 86, 1))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
