import 'package:flutter/material.dart';

class ResultSearchComponent extends StatelessWidget {
  final String description;
  final String address;
  final String phone;
  final double latitude;
  final double longitude;

  ResultSearchComponent(this.description, this.address, this.phone,
      this.latitude, this.longitude);

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
                  description,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    address,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    phone,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {},
                        child: Card(
                            color: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 26,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        onTap: () async {},
                        child: (latitude == null || longitude == null)
                            ? Container()
                            : Card(
                                color: Colors.greenAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 26,
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
