import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final data;
  const ItemDetails({super.key, required this.data});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'person',
          ),
        ],
      ),
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined, color: Colors.black),
            Text(" Ecommerce ", style: TextStyle(color: Colors.black)),
            Text(" Store ", style: TextStyle(color: Colors.orange)),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(widget.data['image']),
          Text(
            widget.data['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data['subtitle'],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 25),
            child: Text(
              widget.data['price'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Color : ', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              Text('  Grey'),
              SizedBox(width: 20),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Size : 36  37  38  39  40',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
