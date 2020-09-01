import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/settings.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  var currentindex = 0;
  var tabs = [
    Status(),
    Calls(),
    Center(child: Text('Camera')),
    Chats(),
    Settings(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[500],
        unselectedItemColor: Colors.grey[500],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.data_usage,
            ),
            title: Text('Status'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            title: Text('Calls'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
            ),
            title: Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            title: Text('Chats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  Widget List() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Time',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.done_all,
                            color: Colors.grey[400],
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            'Message',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
