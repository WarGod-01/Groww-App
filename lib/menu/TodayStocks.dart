import 'package:flutter/material.dart';
import 'package:groww/menu/StockDetailPage.dart';

class TodayStocks extends StatelessWidget {
  final String stockName;
  final String stockcurrentvalue;
  final String stockchangevalue;

  const TodayStocks({required this.stockName, required this.stockcurrentvalue,required this.stockchangevalue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StockDetailPage(
              stockName: stockName,
              stockCurrentValue: stockcurrentvalue,
            ),
          ),
        );
      },
      child: 
        Container(
        width: 190,
        height: 62,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white), 
          borderRadius: BorderRadius.circular(10), 
        ),
         child: Padding(
          padding: const EdgeInsets.all(10.0), 
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                stockName,
                style: const TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    stockcurrentvalue,
                    style: const TextStyle(color: Colors.white), 
                  ),
                  const SizedBox(width: 2),
                  Text(
                    stockchangevalue,
                    style: const TextStyle(color: Colors.green), 
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
