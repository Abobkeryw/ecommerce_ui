import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.phone_android_outlined, "title": "Moblie"},
    {"iconname": Icons.electric_bike, "title": "Bike"},
    {"iconname": Icons.card_membership_outlined, "title": "Gifts"},
    {"iconname": Icons.electric_car_outlined, "title": "Car"},
  ];
  List items = [
    {
      "image": "images/OIPtwo.jpeg",
      "title": "Car",
      "subtitle": "lampo Gen 3",
      "price": "34360\$",
    },
    {
      "image": "images/OIP.jpeg",
      "title": "Car",
      "subtitle": "lampo Gen 5",
      "price": "4360\$",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'person'),  
      ]),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            Container(height: 30),
            Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(categories[index]["iconname"], size: 40),
                      ),
                      Text(
                        categories[index]["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Best SellIng ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 230
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 300,
                        color: Colors.grey[200],
                        child: Image.asset(
                          items[index]["image"],
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        items[index]["title"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(height: 2),
                      Text(
                        items[index]["subtitle"],
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Container(height: 5),
                      Text(
                        items[index]["price"],
                        style: TextStyle(fontSize: 14, color: Colors.orange),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
