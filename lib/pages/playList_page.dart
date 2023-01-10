// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/home_page.dart';
import 'package:first_app/util/neu_box.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink[300],
          child: Icon(
            Icons.play_arrow,
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(
                    Icons.home,
                    size: 38,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    size: 38,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Text(' P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // cover art, artist name, song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset('lib/images/cover.jpeg'),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Đen Vâu',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Đưa nhau đi trốn',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),

                // start time, shuffle button, repeat butotn, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4:22'),
                  ],
                ),
                SizedBox(height: 25),

                // linear bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.5,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                    barRadius: Radius.circular(12),
                  ),
                ),
                SizedBox(height: 25),

                // previous song, pause play, skip
                SizedBox(
                  height: 50,
                  child: Row(
                    children: const [
                      Expanded(
                          child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: NeuBox(
                              child: Icon(
                                Icons.play_arrow,
                                size: 32,
                              ),
                            ),
                          )),
                      Expanded(
                          child: NeuBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
