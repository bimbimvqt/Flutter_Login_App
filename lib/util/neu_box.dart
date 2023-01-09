// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            // darker shashow on the bottom right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5, 5),
            ),

            // darker shadow on the top left
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            )
          ]),
    );
  }
}
