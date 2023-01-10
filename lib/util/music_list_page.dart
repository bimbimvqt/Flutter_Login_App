// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          for (int i = 1; i < 20; i++)
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    i.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/playlist');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sao anh chưa về nhà',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'POP',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '4:33',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 25,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
