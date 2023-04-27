import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/bank_card.dart';
import 'package:wallet_app/util/list_section.dart';
import '../util/button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Page Controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // Action Button
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.pink[300],
            child: Icon(
              Icons.attach_money_rounded,
              size: 32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navbar
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomAppBar(
          height: 100,
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.only(top: 20),
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.only(top: 20),
                onPressed: () {},
                icon: Icon(Icons.settings, size: 40, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
// ------------------------------ HEADER SECTION ----------------------------------------- //

        child: Column(
          children: [
            // App Bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // Plus Button
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

// ------------------------------ BANK CARD SECTION ----------------------------------------- //

            // Bank Cards
            Container(
              height: 200,
              // Pageview = one card on each scroll
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  BankCard(
                    balance: '5,250.50',
                    cardNumber: 3456,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.blue,
                  ),
                  BankCard(
                    balance: '1,200.75',
                    cardNumber: 6789,
                    expiryMonth: 08,
                    expiryYear: 24,
                    color: Colors.green,
                  ),
                  BankCard(
                    balance: '565.45',
                    cardNumber: 1234,
                    expiryMonth: 06,
                    expiryYear: 25,
                    color: Colors.deepPurple[400],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // Scrolling Dot Animations
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600,
              ),
            ),

            SizedBox(
              height: 25,
            ),

// ------------------------------ 3 Buttons ----------------------------------------- //

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send button
                  Button(
                    iconImagePath: 'lib/icons/send.png',
                    buttonName: 'Send',
                  ),

                  // pay button
                  Button(
                      iconImagePath: 'lib/icons/wallet.png', buttonName: 'Pay'),

                  // bills button
                  Button(
                    iconImagePath: 'lib/icons/receipt.png',
                    buttonName: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),

// ------------------------------  Column -> "stats", "transactions" ----------------------------------------- //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Stats
                  ListSection(
                    iconImagePath: 'lib/icons/chart.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payments & Income',
                    color: Colors.deepPurple[200],
                  ),

                  // Transactions
                  ListSection(
                    iconImagePath: 'lib/icons/checklist.png',
                    tileTitle: 'Transactions',
                    tileSubTitle: 'Transaction History',
                    color: Colors.blue[200],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
