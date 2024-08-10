import 'package:flutter/material.dart';

class Productsandtools extends StatelessWidget {
  const Productsandtools({super.key});

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
            child: Text(
              'Products & Tools',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ), 
            ),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 120,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(118, 114, 114, 114),
                          borderRadius: BorderRadius.circular(10), 
                        ),
                        child:  Image.asset(
                          'lib/assets/fno_mint_light.png', 
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "F&O",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 18),
              Container(
                width: 80,
                height: 120,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(118, 114, 114, 114),
                          borderRadius: BorderRadius.circular(10), 
                        ),
                        child: Image.asset(
                          'lib/assets/calendar_mint_light.png', 
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Events",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 18),
              Container(
                width: 80,
                height: 120,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(118, 114, 114, 114),
                          borderRadius: BorderRadius.circular(10), 
                        ),
                        child: Image.asset(
                          'lib/assets/ipo_mint_light.png', 
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "IPO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 18),
              Container(
                width: 80,
                height: 120,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(118, 114, 114, 114),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'lib/assets/screener_mint_light.png', 
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "All stocks",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
