// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

class buildIndication extends StatelessWidget {
  const buildIndication({
    super.key,
    required this.imageList,
    required this.current,
  });

  final List<String> imageList;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 300,
      child: Row(
        children: imageList.map((url) {
          int index = imageList.indexOf(url);
          return Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle,
              color: current == index ? Colors.redAccent : Colors.white12,
            ),
          );
        }).toList(),
      ),
    );
  }
}
