// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/util/my_button.dart';
import 'package:first_app/util/my_card.dart';
import 'package:first_app/util/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

// pageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/albums');
          },
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 38,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  icon: Icon(
                    Icons.logout,
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
                            Icon(Icons.music_note),
                            Text(
                              'SoundClone',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // plus button
                        Container(
                          // padding: EdgeInsets.all(6),
                          // decoration: BoxDecoration(
                          //   color: Colors.grey[400],
                          //   shape: BoxShape.circle,
                          // ),
                          child: Text(user.email!),
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
                          avatar: 'lib/images/hieuthuhai.jpeg',
                          name: 'Hieu Thu Hai',
                          color: Colors.deepPurple[400],
                          songName1: 'Khu v???c m??t em',
                          songName2: 'n??m 3 ch??i rap',
                          songName3: 'REX - 5050',
                          songName4: 'B??i th??? 4',
                          songName5: 'B??i th??? 5',
                        ),
                        MyCard(
                          avatar: 'lib/images/denvau.jpeg',
                          name: '??en V??u',
                          color: Colors.blue[400],
                          songName1: '????a nhau ??i tr???n',
                          songName2: '??i v??? nh??',
                          songName3: 'B??i n??y chill ph???t',
                          songName4: 'L???i nh???',
                          songName5: 'M???t tri???u like',
                        ),
                        MyCard(
                          avatar: 'lib/images/sontung.png',
                          name: 'S??n T??ng MTP',
                          color: Colors.pink[400],
                          songName1: 'Ch???y ngay ??i',
                          songName2: 'H??y trao cho anh',
                          songName3: 'Mu???n r???i m?? sao c??n',
                          songName4: 'N??i n??y c?? anh',
                          songName5: 'Ch??ng ta c???a hi??n t???i',
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
                        // playlist button

                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/playlist');
                          },
                          child: MyButton(
                            buttonText: 'Playlist',
                            iconImagePath: 'lib/icons/playlist.png',
                          ),
                        ),

                        MyButton(
                          buttonText: 'Favorite',
                          iconImagePath: 'lib/icons/favorite.png',
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/albums');
                          },
                          child: MyButton(
                            buttonText: 'Albums',
                            iconImagePath: 'lib/icons/albums.png',
                          ),
                        ),
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
                          tileSubTitle: 'The most played on this week',
                          tileTitle: 'Chart: Top 50',
                        ),

                        // transaction
                        MyListTile(
                          iconImagePath: 'lib/icons/chill.png',
                          tileSubTitle: 'Chill & Relax music',
                          tileTitle: 'Chill',
                        ),
                        MyListTile(
                          iconImagePath: 'lib/icons/remix.png',
                          tileSubTitle: 'Remix music',
                          tileTitle: 'Remix - EDM',
                        ),
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
