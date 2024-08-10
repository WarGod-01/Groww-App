import 'package:flutter/material.dart';
import 'package:groww/stockpage.dart';

class HoldingPage extends StatelessWidget {
  const HoldingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Holdings'),
        backgroundColor: Colors.black,
      ),
       body: Center(
        child: Text(
          'Holding page',
          style: TextStyle(color: Colors.black, fontSize: 24), // Style text
        ),
       ),
    );
  }
}
