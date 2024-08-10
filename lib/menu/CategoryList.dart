import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:groww/menu/ExplorePage.dart';
import 'package:groww/menu/HoldingPage.dart';
import 'package:groww/menu/StockDetailPage.dart';
import 'package:groww/menu/WatchlistPage.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExplorePage(),
          ),
        );
      },

      child: Padding(
        padding: const EdgeInsets.all(10.0), 
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),


    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HoldingPage(),
          ),
        );
      },

      child: Padding(
        padding: const EdgeInsets.all(10.0), 
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Center(
                child: Text(
                  'Holdings',
                  style: TextStyle(color: Colors.white), 
                ),
              ),
            ),
          ],
        ),
      ),
    ),



    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WatchlistPage(),
          ),
        );
      },

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Center(
                child: Text(
                  'Watchlist',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),



    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExplorePage(),
          ),
        );
      },

      child: Padding(
        padding: const EdgeInsets.all(10.0), 
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Center(
                child: Text(
                  '+ Watchlist',
                  style: TextStyle(color: Colors.green), 
                ),
              ),
            ),
          ],
        ),
      ),
    ),
      ],
    );
  }
}
