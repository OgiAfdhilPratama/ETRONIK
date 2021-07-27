import 'package:etronik/constans.dart';
import 'package:etronik/users/akunpage.dart';
import 'package:etronik/users/beranda.dart';
import 'package:etronik/users/favoritepage.dart';
import 'package:etronik/users/keranjangpage.dart';
import 'package:etronik/users/transaksipage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  final Widget child;
  final String nav;
  LandingPage({this.nav, Key key, this.child}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new FavoritePage(),
    new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage(),
  ];

  @override
  void initState() {
    super.initState();
    if (widget.nav == "2") {
      _bottomNavCurrentIndex = 2;
    }
  }

  @override
  void dispose() {
    _bottomNavCurrentIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_sharp,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
