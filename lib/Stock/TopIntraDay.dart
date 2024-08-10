import 'package:flutter/material.dart';
import 'package:groww/menu/stock_info.dart';

class TopIntraDay extends StatelessWidget {
  const TopIntraDay({super.key});

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
                    'Top Intraday',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20), 
                  ),
                  Spacer(),
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
                      img: 'lib/assets/GSTK542649.png',
                      stockName: 'Rail Vikas Nigam',
                      stockPrice: '₹518.15',
                      sign: '-',
                      stockPer: '-20.30 (3.77%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/zomato.png',
                      stockName: 'Zomato',
                      stockPrice: '₹267.09',
                      sign: '+',
                      stockPer: '1.50 (0.56%)',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    StockInfo(
                      img: 'lib/assets/HCL.png',
                      stockName: 'HCL',
                      stockPrice: '₹1589.95',
                      sign: '+',
                      stockPer: '32.10 (2.06%)',
                    ),
                    SizedBox(width: 30),
                    StockInfo(
                      img: 'lib/assets/oil india.png',
                      stockName: 'Oil India',
                      stockPrice: '₹643.95',
                      sign: '+',
                      stockPer: '31.10 (5.07%)',
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
