import 'package:flutter/material.dart';

class StockDetailPage extends StatelessWidget {
  final String stockName;
  final String stockCurrentValue;

  StockDetailPage({required this.stockName, required this.stockCurrentValue});

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
            Text(
              stockName,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              stockCurrentValue,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black, 
    );
  }
}