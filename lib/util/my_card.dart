// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String avatar;
  final String name;
  final color;
  final String songName1;
  final String songName2;
  final String songName3;
  final String songName4;
  final String songName5;

  const MyCard(
      {required this.avatar,
      required this.name,
      required this.color,
      required this.songName1,
      required this.songName2,
      required this.songName3,
      required this.songName4,
      required this.songName5,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Most Listening',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                )
              ],
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                      radius: 55,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'List Songs',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      songName1,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      songName2,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      songName3,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      songName4,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      songName5,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      '...',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
