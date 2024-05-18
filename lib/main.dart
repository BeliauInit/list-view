// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:list_view/Pages/HomePage.dart';
import 'package:list_view/buku/pages/home_page.dart';
import 'package:list_view/buku/pages/item_page.dart';
import 'package:list_view/buku/provider/cart_provider.dart';
import 'package:provider/provider.dart';  

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CartProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/buku',
      routes: {
        '/': (context) => HomePageCihuy(),
        '/buku': (context) => HomePage(),
        '/item': (context) => ItemPage(),
        },
      ),
  )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}