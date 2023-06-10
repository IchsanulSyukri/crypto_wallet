import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class markets extends StatelessWidget {
  markets(
      {required this.imageMarkets,
      required this.matauang,
      required this.persen,
      required this.grafik,
      required this.harga,
      required this.total});

  String imageMarkets;
  String matauang;
  String persen;
  String grafik;
  String harga;
  String total;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Row(
          children: [
            Image.asset(imageMarkets),
            SizedBox(width: 20),
            Column(
              children: [
                Text(
                  matauang,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(persen)
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Image.asset(
              grafik,
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Text(
                  harga,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(total)
              ],
            )
          ],
        ),
      ),
    );
  }
}
