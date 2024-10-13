import 'package:flutter/material.dart';

class ServiceListTypeComponent extends StatefulWidget {
  final String description;


  ServiceListTypeComponent(this.description);

  @override
  _ServiceListTypeComponentState createState() =>
      _ServiceListTypeComponentState();
}

class _ServiceListTypeComponentState extends State<ServiceListTypeComponent> {

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
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14)),
          ),
          Expanded(
            child: ListTile(
              title: Text(
                widget.description,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                overflow: TextOverflow.clip,
                maxLines: 1,
              ),
              trailing: Icon(Icons.check_circle_outline),
            ),
          )
        ],
      ),
    );
  }
}
