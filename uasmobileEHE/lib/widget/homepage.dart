import 'package:flutter/material.dart';
import 'package:uasmobileahmadrahmad/page/itemPage.dart';
import 'package:uasmobileahmadrahmad/page/topup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            SizedBox(width: 8),
            Text('UMKT GUNSHOP'),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          const Icon(
            Icons.notifications,
            size: 35,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemPage()),
              );
            },
            icon: const Icon(
              Icons.shopping_basket_rounded,
              size: 35,
            ),
          ),
        ],
      ),
      body: const topPage(),
    );
  }
}
