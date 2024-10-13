import 'package:flutter/material.dart';

class FaqsComponent extends StatelessWidget {
  final String title;

  FaqsComponent(
    this.title,
  );

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
            child: Container(
              height: 90,
              child: Center(
                child: ListTile(
                  title: Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(23, 59, 86, 1),
                    size: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
