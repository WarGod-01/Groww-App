import 'package:flutter/material.dart';
import 'package:groww/Stock/MostBought.dart';
import 'package:groww/Stock/ProductsAndTools.dart';
import 'package:groww/Stock/StocksInNews.dart';
import 'package:groww/Stock/TopIntraDay.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Page'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MostBought(),
            Productsandtools(),
            TopIntraDay(),
            StocksInNews(),
          ],
        ),
      ),
    );
  }
}
