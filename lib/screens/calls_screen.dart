import 'package:deneme1/models/calls.dart';
import 'package:deneme1/models/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CallsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CallsScreenState();
}

class CallsScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: fakeData2.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                   backgroundImage: NetworkImage(fakeData2[i].avatarUrl),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fakeData2[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children: [
                          Text(fakeData2[i].date,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey)),
                          Padding(
                            padding: const EdgeInsets.only(left:3.0,top: 5),
                            child: Text(
                              fakeData2[i].time,
                              style:
                                  TextStyle(fontSize: 14.0, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Color(0xff075E54),
                  ),
                )
              ],
            ));
  }
}
