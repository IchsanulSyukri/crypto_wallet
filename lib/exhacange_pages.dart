import 'package:crypto_wallet/components/markets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class exhachangePages extends StatelessWidget {
  const exhachangePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back, size: 30),
                      Text(
                        "Exchange",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.search, size: 30),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        "BTC/USD",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "ETH/USD",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "LTC/USD",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "XRP/USD",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "EOS/USD",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset("assets/Group 45992.png"),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          "BTC",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text("Bitcoin")
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          "Rp 10.561.24",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("47.61 ETH")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Image.asset("assets/Group 8.png"),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 328,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          child: Center(
                            child: Text(
                              "Sell",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Column(
                    children: [
                      markets(
                          imageMarkets: "assets/Group 45992.png",
                          matauang: "BTC",
                          persen: "+ 1,6 %",
                          grafik: "assets/Group 5.png",
                          harga: "Rp 29,850.15",
                          total: "2.73 BTC"),
                      SizedBox(height: 30),
                      markets(
                          imageMarkets: "assets/Group 45993.png",
                          matauang: "ETH",
                          persen: "- 0,82 %",
                          grafik: "assets/Group 7.png",
                          harga: "Rp 10.561.24",
                          total: "47.61 ETH"),
                      SizedBox(height: 30),
                      markets(
                          imageMarkets: "assets/Group 45994.png",
                          matauang: "LTC",
                          persen: "- 2.10 %",
                          grafik: "assets/Vector 3.2.png",
                          harga: "Rp 3.676.76",
                          total: "39.27 LTC"),
                      SizedBox(height: 30),
                      markets(
                          imageMarkets: "assets/Group 45995.png",
                          matauang: "XRP",
                          persen: "+ 1,6 %",
                          grafik: "assets/Vector 2.2.png",
                          harga: "Rp 5.241.62",
                          total: "16447,65 XRP"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
