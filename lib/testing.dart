import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TestingByGowtham());
}

class TestingByGowtham extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestHomePage(),
    );
  }

}

class TestHomePage extends StatelessWidget{
  final remarksController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Height of the AppBar
        child: AppBar(
          title: Text(
            "Flutter Testing Profile",
            style: TextStyle(fontSize: 40, backgroundColor: Colors.red),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            radius: 100, // Adjust the size of the image
            backgroundImage: AssetImage('assets/images/profilepic.png'), // Path to the image
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: FilledButton(onPressed: () {}, child: Text("Upload")),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  "Name: ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Gowtham Baalaji K",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  "Email: ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "gowtham@ssfl.com",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  "Contact: ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "6382147949",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  "Designation: ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Mobile App Developer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Text("Icon"),
            focusColor: Color.fromRGBO(34, 100, 17, 0.9),
            tooltip: "Upload your profile picture",
          ),
          TextField(
            controller: remarksController,
            decoration: InputDecoration(
              hintText: 'Enter Remarks',
            ),
          )
        ],
      ),
    );
  }

}