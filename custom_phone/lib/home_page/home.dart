import 'package:flutter/material.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _PhoneState();
}

class _PhoneState extends State<phone> {
  double num = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product List',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
          backgroundColor:  Colors.blue,
          elevation: 2.4,
        ),
        
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              MyCard(
                  clrs: const Color.fromARGB(255, 243, 33, 219),
                  title: 'Iphone',
                  discription: 'iphone is the stylist phone ever',
                  price: '1000'),
              MyCard(
                  clrs: const Color.fromARGB(255, 33, 68, 243),
                  title: 'pixel',
                  discription: 'Pixel  is the most featureful phone ever',
                  price: '800'),
              MyCard(
                  clrs: const Color.fromARGB(255, 27, 192, 15),
                  title: 'Laptop',
                  discription: 'Laptop is the most productive development tool',
                  price: '2000'),
              MyCard(
                  clrs: const Color.fromARGB(255, 243, 201, 33),
                  title: 'Tablet',
                  discription:
                      'Tablet is the most usefull device ever for meeting',
                  price: '1500'),
              MyCard(
                  clrs: const Color.fromARGB(255, 229, 76, 5),
                  title: 'Pen drive',
                  discription: 'iphone is the stylist phone ever',
                  price: '100'),
              Expanded(
                  child: Container(
                color: Colors.black,
              ))
            ])));
  }
}

class MyCard extends StatelessWidget {
  MyCard({
    super.key,
    required this.title,
    required this.discription,
    required this.price,
    required this.clrs,
  });
  final String title;
  final String discription;
  final String price;
  final clrs;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 120,
            height: 99,
            color: clrs,
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          Expanded(
              child: SizedBox(
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  discription,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Prince:$price',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
