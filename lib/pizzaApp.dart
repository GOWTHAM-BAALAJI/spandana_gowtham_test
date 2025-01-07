import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PizzaApp(),
  ));
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

            alignment: Alignment.center,
            child: const Text(
              'Hello, Container!',
              textAlign: TextAlign.center,

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
      title: 'Layout Widgets Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Widgets'),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Item 1')),
                    ),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Item 2')),
                    ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}











//1
class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Widget Example")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Header", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Drawer Example Body")),
    );
  }
}















//2
class DataTableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DataTable Example")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
          ],
          rows: const [
            DataRow(cells: [DataCell(Text('1')), DataCell(Text('Alice')), DataCell(Text('25'))]),
            DataRow(cells: [DataCell(Text('2')), DataCell(Text('Bob')), DataCell(Text('30'))]),
            DataRow(cells: [DataCell(Text('3')), DataCell(Text('Charlie')), DataCell(Text('35'))]),
          ],
        ),
      ),
    );
  }
}
















//3
class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widget Example")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.blue),
            Container(width: 150, height: 150, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.red),
          ],
        ),
      ),
    );
  }
}













//4
class PizzaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/menu': (context) => MenuScreen(),
        '/order': (context) => OrderScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Store', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Pizza Store!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: Text(
                'View Menu',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/order');
              },
              child: Text(
                'Place Order',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> pizzas = [
    {'name': 'Margherita', 'price': '\$10'},
    {'name': 'Pepperoni', 'price': '\$12'},
    {'name': 'Veggie', 'price': '\$9'},
    {'name': 'BBQ Chicken', 'price': '\$14'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.red[50],
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.local_pizza,
                  color: Colors.white,
                ),
              ),
              title: Text(
                pizzas[index]['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                pizzas[index]['price']!,
                style: TextStyle(color: Colors.black87),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add, color: Colors.redAccent),
                onPressed: () {

                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Order'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Your Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.red[50],
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Your Address',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.red[50],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () {
                  String name = nameController.text;
                  String address = addressController.text;

                  if (name.isEmpty || address.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please fill in all details'),
                        backgroundColor: Colors.redAccent,
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Order Placed!'),
                          content: Text(
                            'Thank you, $name! Your pizza will be delivered to $address shortly.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text(
                  'Submit Order',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
