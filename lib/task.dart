import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Task1(),
  ));
}

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task A',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Main(),
        '/sub': (context) => SubScreen(),
      },
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  String displayedName = '';
  String displayedMobile = '';
  String displayedLocation = '';

  bool isInfoDisplayed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter the Name',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')), // Only letters and spaces
              ],
            ),
            SizedBox(height: 15),

            // Custom Styled TextField for Mobile Number
            TextField(
              controller: mobileNoController,
              decoration: InputDecoration(
                hintText: 'Enter the Mobile Number',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                filled: true,
                counter: null,
                counterText: "",
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // Only digits
              ],
              maxLength: 10,
            ),
            SizedBox(height: 15),

            // Custom Styled TextField for Location
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: 'Enter the Location',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: FilledButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "Hello!!!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 24.0,
                      );
                    },
                    child: Text("Trigger Toast"),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: FilledButton(
                    onPressed: () {
                      setState(() {
                        if (isInfoDisplayed) {
                          // If info is displayed, clear it
                          displayedName = '';
                          displayedMobile = '';
                          displayedLocation = '';
                        } else {
                          // If info is not displayed, set it
                          displayedName = nameController.text;
                          displayedMobile = mobileNoController.text;
                          displayedLocation = locationController.text;
                        }
                        // Toggle the flag
                        isInfoDisplayed = !isInfoDisplayed;
                      });
                    },
                    child: Text(isInfoDisplayed ? "Hide info" : "Display info"),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 20),
            // Display the entered data when "Tx" is pressed
            SizedBox(height: 10),
            Container(
              // margin: EdgeInsets.only(top: 10),
              child: FilledButton(
                onPressed: () {
                  // Check if all fields have data
                  if (nameController.text.isNotEmpty && mobileNoController.text.isNotEmpty && locationController.text.isNotEmpty) {
                    // Create a data map
                    Map<String, String> data = {
                      'name': nameController.text,
                      'mobile': mobileNoController.text,
                      'location': locationController.text,
                    };
                    // Navigate to the SubScreen and pass the data
                    Navigator.pushNamed(context, '/sub', arguments: data);
                  } else {
                    // Show a Toast message if any field is empty
                    Fluttertoast.showToast(
                      msg: "Please fill in all the fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 24.0,
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ),
            SizedBox(height: 20),
            if (isInfoDisplayed)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Name: ",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: Text(
                          "$displayedName",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Mobile: ",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: Text(
                          "$displayedMobile",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Location: ",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: Text(
                          "$displayedLocation",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}

class SubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the data passed from the Main screen
    final Map<String, String> data = ModalRoute.of(context)?.settings.arguments as Map<String, String> ?? {};

    return Scaffold(
      appBar: AppBar(
        title: Text('Result', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: Text("Name: ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text("${data['name'] ?? 'Not Provided'}", style: TextStyle(fontSize: 24),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: Text("Mobile: ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text("${data['mobile'] ?? 'Not Provided'}", style: TextStyle(fontSize: 24),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: Text("Location: ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text("${data['location'] ?? 'Not Provided'}", style: TextStyle(fontSize: 24),),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
