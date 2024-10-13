import 'package:flutter/material.dart';

class PlansComponent extends StatelessWidget {
  final String insurance;
  final String policyNumber;


  PlansComponent(this.insurance, this.policyNumber);

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
                    'Insurance: ' + insurance,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Policy Number: ' + policyNumber,
                    style: TextStyle(color: Color.fromRGBO(23, 59, 86, 1), fontSize: 12),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
