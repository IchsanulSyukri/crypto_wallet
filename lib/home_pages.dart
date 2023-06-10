import 'package:crypto_wallet/components/markets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePages extends StatelessWidget {
  const homePages({super.key});

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
                // Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/01.png"),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.search, size: 30),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.qr_code_scanner,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "HELLO",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "ICHSANUL SYUKRI",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [Image.asset("assets/Total balance.png")],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Markets",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Color(0xff0A6CFF)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
                    SizedBox(height: 30),
                    markets(
                        imageMarkets: "assets/Group 45995.png",
                        matauang: "XRP",
                        persen: "+ 1,6 %",
                        grafik: "assets/Vector 2.2.png",
                        harga: "Rp 5.241.62",
                        total: "16447,65 XRP"),
                    SizedBox(height: 30),
                    markets(
                        imageMarkets: "assets/Group 45995.png",
                        matauang: "XRP",
                        persen: "+ 1,6 %",
                        grafik: "assets/Vector 2.2.png",
                        harga: "Rp 5.241.62",
                        total: "16447,65 XRP"),
                    SizedBox(height: 30),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
