import 'package:flutter/material.dart';
import 'package:groww/menu/StockDetailPage2.dart';

class StockInfo extends StatelessWidget {
  final String img;
  final String stockName;
  final String stockPrice;
  final String stockPer;
  final String sign;

  StockInfo({
    required this.img,
    required this.stockName,
    required this.stockPrice,
    required this.stockPer,
    required this.sign,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StockDetailPage2(
              img: img,
              stockName: stockName,
              stockPrice: stockPrice,
              stockPer: stockPer,
            ),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: const Color.fromARGB(255, 99, 99, 99)), 
          borderRadius: BorderRadius.circular(10), 
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Image.asset(
                img, 
                width: 30,
              ),
              SizedBox(height: 10),
              Text(
                stockName,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10), 
              Text(
                stockPrice,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              if (sign == '-') 
                Text(
                  stockPer,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                )
              else if (sign == '+') 
                Text(
                  stockPer,
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

