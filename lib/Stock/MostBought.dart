import 'package:flutter/material.dart';
import 'package:groww/menu/stock_info.dart';

class MostBought extends StatelessWidget {
  const MostBought({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Text(
              'Most bought on Groww',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    StockInfo(
                      img: 'lib/assets/GSTK500470.png',
                      stockName: 'TCS',
                      stockPrice: '₹1490.33',
                      sign: '-',
                      stockPer: '-15.43 (2.10%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/GSTK532775.png',
                      stockName: 'GTL Infrastructure',
                      stockPrice: '₹2.81',
                      sign: '+',
                      stockPer: '0.00 (0.00%)',
                    ),
                  ],
                ),
                SizedBox(height: 30), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    StockInfo(
                      img: 'lib/assets/GSTK532667.png',
                      stockName: 'Suzlon Energy',
                      stockPrice: '₹76.54',
                      sign: '+',
                      stockPer: '3.62 (4.96%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/GSTK542649.png',
                      stockName: 'Rail Vikas Nigam',
                      stockPrice: '₹518.15',
                      sign: '-',
                      stockPer: '-20.30 (3.77%)',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
