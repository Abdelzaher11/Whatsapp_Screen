import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Privacy',
            style: TextStyle(
              color: Colors.blue[400],
              fontSize: 15.5,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // title
            Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5.0,),
                  Text(
                    'Status',
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
            ),
            //my status
            SizedBox(height: 10.0,),
            Divider(height: 1.0,color: Colors.grey,),
            SizedBox(height: 15.0,),
            Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 3.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Status',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        'Time',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(
                        Icons.camera_alt,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //recent updates
            SizedBox(height: 25.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 15.0,),
                Text(
                  'RECENT UPDATES',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
                itemBuilder:(context,index)=>Story(),
            ),
            //viewed
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 15.0,),
                Text(
                  'RECENT UPDATES',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder:(context,index)=>Story(),
            ),
          ],
        ),
      ),
    );
  }
  Widget Story()=>Container(
    color: Colors.white,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.grey[300],
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 3.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0,),
              Text(
                'Time',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(color: Colors.grey[400],height: 1.0,),
            ],
          ),
        ),
      ],
    ),
  );
}
