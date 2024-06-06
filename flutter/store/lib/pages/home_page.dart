import 'package:flutter/material.dart';
import 'package:store/pages/browse_page.dart';
import 'package:store/pages/cart_page.dart';
import 'package:store/pages/store_page.dart';
import 'package:store/pages/coupons_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _pages = <Widget>[
    BrowsePage(),
    StorePage(),
    CouponsPage(),
    CartPage()
  ];
  static const List<String> labels = ['Browse', 'Store', 'Coupons', 'Cart'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          labels[_selectedIndex],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8A3490),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              _onItemTapped(3);
            },
          )
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: labels[0],
            backgroundColor: Color(0xFF8A3490),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: labels[1],
            backgroundColor: Color(0xFF8A3490),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: labels[2],
            backgroundColor: Color(0xFF8A3490),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: labels[3],
              backgroundColor: Color(0xFF8A3490)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
