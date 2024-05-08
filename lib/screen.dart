import 'package:flutter/material.dart';
import 'package:project_sepatu/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes App'),
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          Shoe shoe = shoes[index];
          return ShoeTile(shoe: shoe);
        },
      ),
    );
  }
}

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  const ShoeTile({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(shoe.imageUrl, width: 100, height: 100),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(shoe.name),
              Text(shoe.price),
            ],
          ),
        ],
      ),
    );
  }
}

List<Shoe> shoes = [
  Shoe(
    name: 'Nike SB Zoom Blazer Mid Premium',
    imageUrl: 'assets/sepatu_biru.png',
    price: 'Rp 28.795',
  ),
  Shoe(
    name: 'Nike Air Zoom Pegasus Men\'s Road Running Shoes',
    imageUrl: 'assets/sepatu_biru.png',
    price: 'Rp 29.995',
  ),
  Shoe(
    name: 'Nike Air Zoom Pegasus Men\'s Road Running Shoes',
    imageUrl: 'assets/sepatu_biru.png',
    price: 'Rp 219.995',
  ),
  Shoe(
    name: 'Nike Air Force 1 Older Kids\' Shoe',
    imageUrl: 'assets/sepatu_biru.png',
    price: 'Rp 26.295',
  ),
  Shoe(
    name: 'Nike Waffle One Men\'s Shoes',
    imageUrl: 'assets/sepatu_biru.png',
    price: 'Rp 28.295',
  ),
];

class Shoe {
  final String name;
  final String imageUrl;
  final String price;

  const Shoe({required this.name, required this.imageUrl, required this.price});
}