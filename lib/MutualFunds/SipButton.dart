import 'package:flutter/material.dart';
import 'package:groww/MutualFunds/SIPCalculatorPage.dart';


class Sipbutton extends StatelessWidget {
  const Sipbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
  padding: const EdgeInsets.all(16.0), 
  child: Align(
    alignment: Alignment.centerLeft, 
    child: Text(
      'SIP Calculator',
      style: TextStyle(color: Colors.white, fontSize: 20), 
    ),
  ),
),
          Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SIPCalculatorPage()),
            );
          },
          child: Text('Open SIP Calculator'),
        ),
      )],
    );
    
  }
}
