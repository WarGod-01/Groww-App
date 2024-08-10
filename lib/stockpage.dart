import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groww/MutualFunds/SipButton.dart';
import 'package:groww/MutualFunds/StockCollection.dart';
import 'package:groww/MutualFunds/PopularFunds.dart';
import 'package:groww/Stock/ProductsAndTools.dart';
import 'package:groww/Stock/StocksInNews.dart';
import 'package:groww/Stock/TopIntraDay.dart';
import 'package:groww/menu/CategoryList.dart';
import 'package:groww/Stock/MostBought.dart';
import 'package:groww/menu/stock_info.dart';
import 'package:groww/menu/TodayStocks.dart';

class Stockpage extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Stockpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/assets/groww-logo-270.png',
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(
              _selectedIndex == 0
                  ? 'Stocks'
                  : _selectedIndex == 1
                      ? 'Mutual Funds'
                      : 'Payment',
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TodayStocks(
                      stockName: 'NIFTY50',
                      stockcurrentvalue: '24,367.50',
                      stockchangevalue: '+251.50(1.04%)'),
                  const SizedBox(width: 10),
                  TodayStocks(
                      stockName: 'BANK NIFTY',
                      stockcurrentvalue: '50,484.50',
                      stockchangevalue: '+327.80(0.65%)'),
                  const SizedBox(width: 10),
                  TodayStocks(
                      stockName: 'FINNIFTY',
                      stockcurrentvalue: '22,983.30',
                      stockchangevalue: '+144.90(0.63%)'),
                  const SizedBox(width: 10),
                  TodayStocks(
                      stockName: 'SENSEX',
                      stockcurrentvalue: '79,705.91',
                      stockchangevalue: '+819.69(1.04%)'),
                  const SizedBox(width: 10),
                  TodayStocks(
                      stockName: 'MIDCPNIFTY',
                      stockcurrentvalue: '12,598.95',
                      stockchangevalue: '+74(0.59%)'),
                  const SizedBox(width: 10),
                  TodayStocks(
                      stockName: 'BANKEX',
                      stockcurrentvalue: '57,458.68',
                      stockchangevalue: '+424.87(0.74%)'),
                  const SizedBox(width: 10),                  
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryList(), const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _selectedIndex == 0
                ? Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MostBought(),
                        Productsandtools(),
                        TopIntraDay(),
                        StocksInNews()
                      ],
                    ),
                  )
                : _selectedIndex == 1
                    ? Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                  16.0), 
                              child: Text(
                                'Popular Funds',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20), 
                              ),
                            ),
                            Container(
                              height: 200,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    PopularFunds(
                                      img: 'lib/assets/GSTK500325.png',
                                      stockName: 'Reliance Industries',
                                      stockCurrentValue: '1000',
                                      stockChangeValue: '28%',
                                    ),
                                    SizedBox(width: 10),
                                    PopularFunds(
                                      img: 'lib/assets/Nippon India.png',
                                      stockName: 'Nippon India',
                                      stockCurrentValue: '1500',
                                      stockChangeValue: '25.0%',
                                    ),
                                    SizedBox(width: 10),
                                    PopularFunds(
                                      img: 'lib/assets/Aditya Birla.png',
                                      stockName: 'Aditya Birla',
                                      stockCurrentValue: '1200',
                                      stockChangeValue: '43.19%',
                                    ),
                                    SizedBox(width: 10),
                                    PopularFunds(
                                      img: 'lib/assets/escorts_groww.png',
                                      stockName: 'Quant Small Cap',
                                      stockCurrentValue: '1300',
                                      stockChangeValue: '31.69%',
                                    ),
                                  ],
                                ),
                                
                              ),
                            ), Sipbutton(),
                           Stockcollection(),
                          ], 
                        ),
                      )
                    : Container(
                        height: 300,
                        color: Colors.green,
                        child: Center(
                            child: Text(
                          "Payment Page Content",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                     
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph_rounded,
              color: Colors.white,
            ),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart_outline,
              color: Colors.white,
            ),
            label: 'Mutual Funds',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.paypal,
              color: Colors.white,
            ),
            label: 'Pay',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedLabelStyle:
            const TextStyle(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        onTap: _onItemTapped,
      ),
    );
  }
}
