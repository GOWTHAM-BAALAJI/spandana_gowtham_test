import 'package:flutter/material.dart';
// i am from web
void main() {
  runApp( LayoutExampleApp());
}

class ContainerExampleApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
        ),
        body: Center(
          child: Container(
            // Container background color
            color: Colors.blueGrey[100],
            // Container size
            width: 200,
            height: 200,
            // Margin adds space *outside* the Container
            margin: const EdgeInsets.all(16.0),
            // Padding adds space *inside* the Container
            padding: const EdgeInsets.all(20.0),

            alignment: Alignment.bottomRight,
            child: const Text(
              'Hello, Container!',
              textAlign: TextAlign.start,

            ),
          ),
        ),
      ),
    );
  }
}





























class LayoutExampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Widgets Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Layout Widgets')),
          backgroundColor: Colors.lightGreen,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // Arranges its children vertically
              children: [
                const Text(
                  'Column Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Item 1')),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Item 2')),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      color: Colors.orangeAccent,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Item 3')),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                const Text(
                  'Row Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.pinkAccent,
                      height: 50,
                      width: 80,
                      child: const Center(child: Text('Item A')),
                    ),
                    Container(
                      color: Colors.yellowAccent,
                      height: 50,
                      width: 80,
                      child: const Center(child: Text('Item B')),
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: 80,
                      child: const Center(child: Text('Item C')),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                const Text(
                  'Stack Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Container(
                  color: Colors.grey.shade300,
                  width: 200,
                  height: 150,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: Colors.redAccent,
                        width: 150,
                        height: 100,
                      ),
                      Container(
                        color: Colors.greenAccent,
                        width: 100,
                        height: 70,
                      ),
                      Container(
                        color: Colors.blueAccent,
                        width: 50,
                        height: 40,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
