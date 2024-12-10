import 'package:flutter/material.dart';
import 'table_of_contents.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ХАДЖ И УМРА',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              AspectRatio(
                  aspectRatio: 16 / 16,
                  child:
                      Image.asset('assets/kaaba.png', width: double.infinity)),
              const SizedBox(height: 20),
              const Text(
                'В СВЕТЕ КОРАНА И СУННЫ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text('Автор: АБДУЛЬ-АЗИЗ ИБН БАЗ',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TableOfContentsPage()),
                  );
                },
                child: const Text('Перейти к содержанию'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
