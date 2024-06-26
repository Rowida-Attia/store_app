import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:store/screens/home_page.dart';
import 'package:store/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        UdateProductPage.id: (context) => UdateProductPage(),
      },
    );
  }
}
