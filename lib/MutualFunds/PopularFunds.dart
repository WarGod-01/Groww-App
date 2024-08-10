import 'package:flutter/material.dart';
import 'package:groww/menu/StockDetailPage.dart';

class PopularFunds extends StatelessWidget {
  final String img;
  final String stockName;
  final String stockCurrentValue;
  final String stockChangeValue;

  const PopularFunds({
    required this.img,
    required this.stockName,
    required this.stockCurrentValue,
    required this.stockChangeValue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StockDetailPage(
              stockName: stockName,
              stockCurrentValue: stockCurrentValue,
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white), 
          borderRadius: BorderRadius.circular(10), 
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Image.asset(
                img,
                width: 30, 
              ),
               
              Row(
                children: [
                  Text(
                    stockName,
                    style: const TextStyle(color: Colors.white, fontSize: 16), 
                  ),
                  Spacer(),
                  Text(
                    stockChangeValue,
                    style: const TextStyle(color: Colors.green, fontSize: 16), 
                  ),
                ],
              ),
               
              Row(
                children: [
                  Text(
                    'Equity',
                    style: const TextStyle(color: Colors.white, fontSize: 14), 
                  ),
                  Spacer(), 
                  Text(
                    '3Y',
                    style: const TextStyle(color: Colors.green, fontSize: 14), 
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
