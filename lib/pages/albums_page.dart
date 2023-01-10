// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/util/albums_list.dart';
import 'package:first_app/util/music_list_page.dart';
import 'package:flutter/material.dart';

class AlbumsPage extends StatelessWidget {
  const AlbumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303151),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.pink, Colors.orange],
          )),
        ),
        centerTitle: true,
        title: Text(
          'Albums',
        ),
      ),
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
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Tuan',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'What you want to hear?',
                  style: TextStyle(color: Colors.white38),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 20),
                  child: Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: 50,
                          width: 200,
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                hintText: 'Search the music',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            size: 36,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 18,
                  ),
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      text: 'Musics',
                    ),
                    Tab(
                      text: 'PlayLists',
                    ),
                    Tab(
                      text: 'Favourites',
                    ),
                  ],
                ),
                Flexible(
                    child: TabBarView(
                  children: [
                    MusicList(),
                    AlbumsList(),
                    MusicList(),
                  ],
                ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
