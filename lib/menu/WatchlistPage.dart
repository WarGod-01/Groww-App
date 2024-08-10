import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watchlist'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Watchlist page',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
