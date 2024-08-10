import 'package:flutter/material.dart';

class StockDetailPage2 extends StatelessWidget {
  final String img;
  final String stockName;
  final String stockPrice;
  final String stockPer;

  StockDetailPage2({
    required this.img,
    required this.stockName,
    required this.stockPrice,
    required this.stockPer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stockName),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              img,
              width: 100, 
            ),
            const SizedBox(height: 20),
            Text(
              stockName,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              stockPrice,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              stockPer,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black, 
    );
  }
}
