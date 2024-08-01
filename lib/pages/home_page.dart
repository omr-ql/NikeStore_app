import 'package:flutter/material.dart';
import 'package:nike_store/pages/shop_page.dart';
import 'package:nike_store/utilities/navigation_bar.dart';
import 'about_page.dart';
import 'cart_page.dart';
import 'intro_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DONE : This Selected index is to control the button nav bar
  int _selectedIndex = 0;

  // DONE : A Method will upload our selected index
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // DONE : A List For Shop And Cart Page
  final List<Widget> _pages = [
    // Shop Page
    const ShopPage(),
    // Cart Page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyNavigationBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      // DONE : Make The AppBar And Design It .
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
            )
        ),
      ),
      // DONE : Make The Drawer And Design It .
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            children: [
              DrawerHeader(
                // DONE : NIKE Logo
                child: Container(
                  width: 100, // specify desired width
                  height: 100, // specify desired height
                  child: Image.asset(
                    'images/logo1.png',
                    color: Colors.white,
                  ),
                ),
              ),
              // DONE : Just Space Between The Logo And The Buttons
              const SizedBox(height: 20.0) ,
              // DONE : HOME Button
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home , color: Colors.white,),
                  title: Text('Home' , style: TextStyle(color: Colors.white),),
                ),
              ),
              // DONE : About The App
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text('About', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutPage()),
                    );
                  },
                ),
              ),
              // DONE : Log out Button
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.exit_to_app, color: Colors.white),
                  title: Text('Log Out', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Here you might also handle clearing any user data/session data
                    // Navigate to the IntroPage
                    Navigator.pushReplacement( // Using pushReplacement to remove all routes below the stack
                      context,
                      MaterialPageRoute(builder: (context) => IntroPage()),
                    );
                  },
                ),
              ),
            ],
          )
      ),
      // DONE : Where You Navigate Between The Screens
      body: _pages[_selectedIndex],
    );
  }
}