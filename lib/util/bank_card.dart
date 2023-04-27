import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const BankCard({
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 20),
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
            Text('\$' + balance,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Card Info
                Text('**** ' + cardNumber.toString(),
                    style: TextStyle(color: Colors.white)),
                // Card Expiration
                Text(expiryMonth.toString() + '/' + expiryYear.toString(),
                    style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
