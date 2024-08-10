import 'package:flutter/material.dart';
import 'package:groww/menu/stock_info.dart';

class Stockcollection extends StatelessWidget {
  const Stockcollection({super.key});

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
              'Collection',
              style:
                  TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Column(
            children: [
              Row(
            mainAxisAlignment:
                MainAxisAlignment.center, 
            children: [
              Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                      child:  Image.asset(
                          'lib/assets/high_returns.png', 
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "High return",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(width: 18),
             Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                      child:  Image.asset(
                          'lib/assets/sip_with_500.png',
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "SIP with ₹100",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(width: 18),Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                       child:  Image.asset(
                          'lib/assets/tax_saving.png', 
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Tax Saving",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, 
            children: [
              Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                      child:  Image.asset(
                          'lib/assets/large_cap.png',
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Large Cap",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(width: 18),
             Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                      child:  Image.asset(
                          'lib/assets/mid_cap.png', 
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Mid Cap",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(width: 18),Container(
                width: 110,
                height: 120,
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 114, 114, 114),
                        borderRadius: BorderRadius.circular(
                            10), 
                      ),
                      child:  Image.asset(
                          'lib/assets/small_cap.png', 
                          width: 30,
                        ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Small Cap",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
            ],
          )
        ],
      ),
    );
  }
}
