import 'package:flutter/material.dart';
// import 'package:project/screen.dart';

void main() {
  runApp(const MyApp());
}

class Product {
  final String name;
  final String description;
  final String url;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.url,
    required this.price,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Product> products = [
    Product(
      name: 'Nike Air Max',
      description: 'Comfortable running shoes for all-day wear.',
      url: 'https://via.placeholder.com/150',
      price: 150.0,
    ),
    Product(
      name: 'Adidas Ultraboost',
      description: 'Boost your performance with these lightweight shoes.',
      url: 'assets/shoes1.png',
      price: 180.0,
    ),
    Product(
      name: 'Puma RS-X',
      description: 'Classic style meets modern comfort.',
      url: 'assets/shoes2.png',
      price: 120.0,
    ),
   Product(
      name: 'Puma RS-X',
      description: 'Classic style meets modern comfort.',
      url: 'assets/shoes2.png',
      price: 120.0,
    ),
    Product(
      name: 'Puma RS-X',
      description: 'Classic style meets modern comfort.',
      url: 'assets/shoes2.png',
      price: 120.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: index % 2 == 0 ? [Colors.blue, Colors.green] : [Colors.red, Colors.orange],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(image: AssetImage('assets/sepatu_biru.png'),)
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              products[index].description,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '\$${products[index].price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}