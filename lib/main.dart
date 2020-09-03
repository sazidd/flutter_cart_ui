import 'package:flutter/material.dart';
import 'package:flutter_cart_ui/screens/cart_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}
