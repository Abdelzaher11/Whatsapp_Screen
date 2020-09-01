import 'package:flutter/material.dart';
class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                MaterialButton(
                  disabledColor: Colors.purpleAccent,
                  color: Colors.blue[600],
                  onPressed: (){},
                  child: Text(
                      'All',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue[600],
                  onPressed: (){},
                  child: Text(
                    'Missed',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        leading: Align(
          alignment: Alignment.center,
          child: Text(
            'Edit',
            style: TextStyle(
              color: Colors.blue[400],
              fontSize: 15.5,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.add_call,
              color: Colors.blue[400],
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //title
            Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 12.0,),
                  Text(
                    'Calls',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //search bar
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 13.0,left: 13.0),
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
            ),
            //create a room
            Divider(height: 1.0,color: Colors.grey[400],),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 8.0,),
                  CircleAvatar(
                    radius: 17.0,
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.videocam,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'Create a room',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1.0,color: Colors.grey[400],),
            //calls
           ListView.builder(
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             itemCount: 15,
               itemBuilder:(context,index)=>Calls(),
           ),
          ],
        ),
      ),
    );
  }
  Widget Calls()=> Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          radius: 18.5,
          backgroundColor: Colors.grey[300],
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.red[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Spacer(flex: 1,),
                  Text(
                    'Time',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Icon(
                    Icons.info_outline,
                    color: Colors.blue[400],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Colors.grey[400],
                    size: 18.0,
                  ),
                  SizedBox(width: 3.0,),
                  Text(
                    'Missed',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  Divider(height: 1.0,color: Colors.grey,),
                ],
              ),
              SizedBox(height: 5.0,),
              Divider(height: 1,color: Colors.grey[400],),


            ],
          ),
        ),
      ],
    ),
  );
}
