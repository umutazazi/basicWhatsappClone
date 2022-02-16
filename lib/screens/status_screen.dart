import 'package:deneme1/models/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StatusScreenState();
}

class StatusScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(),
                Container(
                    padding: EdgeInsets.only(right: 180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Durumum",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Zaman",
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    )),
                Icon(
                  Icons.more_horiz,
                  color: Color(0xff075E54),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35.0,
            child: DecoratedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Görülen güncellemeler",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff128C7E)),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey.shade100),
            ),
          ),
          
        ],
      ),
      
    );
  }
}
