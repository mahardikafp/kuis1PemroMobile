import 'package:flutter/material.dart';
import 'package:navigation/pages/page2.dart';
import 'pages/page1.dart';

void main() {
  runApp(Nav2App());
}

class Menu {
  String nama_menu, harga, gambar;
  int total;
  Menu(
      {required this.nama_menu,
      required this.total,
      required this.harga,
      required this.gambar});
}

class Nav2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/home': (BuildContext ctx) => HomeScreen(),
        '/detail': (BuildContext ctx) => DetailScreen(),
      },
    );
  }
}
