import 'package:car_khaana/main.dart';
import 'package:car_khaana/login_page.dart';
import 'package:car_khaana/navbar.dart';
import 'package:car_khaana/widgets/ads_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("CarKhaana"),
          centerTitle: true,
          actions: [
            IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: (){},
            ),
            IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        LoginPage())
              );
            },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.blue.shade700],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                )
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.lightGreen,
            indicatorWeight: 4,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.add_business), text: 'My Ads'),
              Tab(icon: Icon(Icons.account_box), text: 'Account')
            ],),
          elevation: 20,
      ),
        body: TabBarView(
          children: [
            buildHomePage('Home Page'),
            buildPage('My Ads'),
            buildPage('Account'),
          ],
        ),
      ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 20),
    ),
  );

  Widget buildHomePage(String text) => Center(
    child: adsList(),
  );
}