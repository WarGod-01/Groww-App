import 'package:flutter/material.dart';
import 'dart:math';

class SIPCalculatorPage extends StatefulWidget {
  const SIPCalculatorPage({super.key});

  @override
  _SIPCalculatorPageState createState() => _SIPCalculatorPageState();
}

class _SIPCalculatorPageState extends State<SIPCalculatorPage> {
  final TextEditingController _investmentController = TextEditingController();
  final TextEditingController _monthsController = TextEditingController();
  final TextEditingController _interestController = TextEditingController();

  void _calculateSIP() {
    final double P = double.tryParse(_investmentController.text) ?? 0.0;
    final int n = int.tryParse(_monthsController.text) ?? 0;
    final double annualInterest = double.tryParse(_interestController.text) ?? 0.0;
    final double i = (annualInterest / 100) / 12; // Monthly interest rate

    if (P > 0 && n > 0 && i >= 0) {
      final double M = P * ((pow(1 + i, n) - 1) / i) * (1 + i);
      final double totalInvestment = P * n;
      
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('SIP Calculation Result'),
            content: Text(
              'Total Investment: Rs ${totalInvestment.toStringAsFixed(2)}\n'
              'Maturity Amount: Rs ${M.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Input Error'),
            content: Text(
              'Please enter valid values.',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIP Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIP Calculator',
              style: TextStyle(color: Colors.white, fontSize: 20), 
            ),
            SizedBox(height: 20),
            TextField(
              controller: _investmentController,
              decoration: InputDecoration(
                labelText: 'Monthly Investment (P)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _monthsController,
              decoration: InputDecoration(
                labelText: 'Number of Months (n)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _interestController,
              decoration: InputDecoration(
                labelText: 'Annual Interest Rate (%)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateSIP,
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
