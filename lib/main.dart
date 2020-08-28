import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Edit',
              style: TextStyle(
                color: Colors.blue[400],
              ),
            ),
          ),
        ),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size(30.0,30.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white70,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              Icons.sms,
              color: Colors.blue[400],
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15.0,),
                    CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.grey[200],
                      child: Icon(
                        Icons.restore_from_trash,
                        size: 28.0,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                        'Archived Chats',
                      style: TextStyle(
                        color: Colors.blue[500],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(flex: 1,),
                    Text(
                        'Number',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      'Broadcast Lists',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent[100],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                    Text(
                      'New Group',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent[100],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 3.0,
              ),
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => List(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,

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
          color: Colors.grey[100],
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
