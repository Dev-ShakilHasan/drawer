import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Flash Shop"),
        actions: [
          Icon(
            Icons.more_vert,
            size: 30.0,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png",
                      height: 100,
                      width: 100,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  Text("\n A Man"),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Accounts"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Cart"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log Out"),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.blueGrey, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin_outlined),
            label: "Trip",
            backgroundColor: Colors.amberAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Today",
            backgroundColor: Colors.amberAccent)
      ]),
    ),
  ));
}
