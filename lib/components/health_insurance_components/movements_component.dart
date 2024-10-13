import 'package:flutter/material.dart';

class MovementsComponent extends StatelessWidget {

  final String requisitionTypeDesc;
  final String genericProviderDesc;
  final String requestDate;

  const MovementsComponent(this.requisitionTypeDesc,
      this.genericProviderDesc, this.requestDate);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
          ),
          SizedBox(
            width: 4,
          ),
          Expanded(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 6.0, bottom: 10.0),
                child: Text(
                  requisitionTypeDesc,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          genericProviderDesc,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          requestDate,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
