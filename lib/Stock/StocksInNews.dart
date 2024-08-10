import 'package:flutter/material.dart';
import 'package:groww/menu/stock_info.dart';

class StocksInNews extends StatelessWidget {
  const StocksInNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0), 
              child: Row(
                children: [
                  Text(
                    'Stocks in NEWS',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20), 
                  ),
                  Spacer(), // Pushes the next widget to the far right
                  Text(
                    'see more',
                    style: TextStyle(
                        color: Colors.white, fontSize: 15), 
                  ),
                ],
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    StockInfo(
                      img: 'lib/assets/GSTK500470.png',
                      stockName: 'TCS',
                      stockPrice: '1490',
                      sign: '-',
                      stockPer: '+15(20.00%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/GSTK500470.png',
                      stockName: 'TCS',
                      stockPrice: '1490',
                      sign: '-',
                      stockPer: '+15(20.00%)',
                    ),
                  ],
                ),
                SizedBox(height: 30), 
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, 
                  children: [
                    StockInfo(
                      img: 'lib/assets/GSTK500470.png',
                      stockName: 'TCS',
                      stockPrice: '1490',
                      sign: '-',
                      stockPer: '+15(20.00%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/GSTK500470.png',
                      stockName: 'TCS',
                      stockPrice: '1490',
                      sign: '-',
                      stockPer: '+15(20.00%)',
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
