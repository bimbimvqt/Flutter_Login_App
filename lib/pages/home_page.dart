// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_app/util/my_button.dart';
import 'package:first_app/util/my_card.dart';
import 'package:first_app/util/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// pageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink[300],
          child: Icon(
            Icons.monetization_on,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 38,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 38,
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: SafeArea(
              child: Column(
                children: [
                  // app bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'My',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Cards',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),

                        // plus button
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),

                  // cards
                  Container(
                    height: 220,
                    child: PageView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyCard(
                          balance: 525.20,
                          cardNumber: 12321331,
                          expiryMonth: 10,
                          expiryYear: 24,
                          color: Colors.deepPurple[400],
                        ),
                        MyCard(
                          balance: 125.20,
                          cardNumber: 12321331,
                          expiryMonth: 5,
                          expiryYear: 21,
                          color: Colors.blue[400],
                        ),
                        MyCard(
                          balance: 825.20,
                          cardNumber: 12321331,
                          expiryMonth: 11,
                          expiryYear: 25,
                          color: Colors.pink[400],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(height: 30),

                  // 3 buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // send button
                        MyButton(
                            buttonText: 'Send',
                            iconImagePath: 'lib/icons/send-money.png'),
                        MyButton(
                            buttonText: 'Pay',
                            iconImagePath: 'lib/icons/pay.png'),
                        MyButton(
                            buttonText: 'Bills',
                            iconImagePath: 'lib/icons/bills.png'),
                        // pay button

                        // bill button
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // column
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        // statistics
                        MyListTile(
                            iconImagePath: 'lib/icons/statistics.png',
                            tileSubTitle: 'Payment and Income',
                            tileTitle: 'Statistics'),

                        // transaction
                        MyListTile(
                            iconImagePath: 'lib/icons/transaction.png',
                            tileSubTitle: 'Transaction History',
                            tileTitle: 'Transaction'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
