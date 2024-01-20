// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({
    super.key,
    required this.content,
    required this.color1,
    required this.color2,
    required this.fontSize,
    required this.fontWeight,
  });
  final String content;
  final Color color1;
  final Color color2;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    return MouseRegion(
      onEnter: (event) {
        onEntered(true);
      },
      onExit: (event) {
        onEntered(false);
      },
      cursor: SystemMouseCursors.click,
      child: Text(
        widget.content,
        style: TextStyle(
          fontFamily: 'roboto',
          color: isHovered == false ? widget.color1 : widget.color2,
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
        ),
        maxLines: 2,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
