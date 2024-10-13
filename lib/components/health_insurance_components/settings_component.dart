import 'package:flutter/material.dart';

class SettingsComponent extends StatelessWidget {
  final String title;
  final Color color;

  SettingsComponent(this.title, {required this.color});

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
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                overflow: TextOverflow.clip,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.circle,
                color: color == null ? Colors.green : color,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
