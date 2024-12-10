import 'package:flutter/material.dart';
import 'package:my_book/screens/home_page.dart';

void main() async {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Хадж и Умра',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
