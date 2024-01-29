import 'package:flutter/material.dart';

import 'Utils.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.onPass,
    required this.content,
    required this.color1,
    required this.color2,
    required this.textStyle,
  });

  final double width;
  final double height;
  final VoidCallback onPass;
  final String content;
  final Color color1;
  final Color color2;
  final TextStyle textStyle;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool isHovered = false;
  Size screenSize = Utils().getScreenSize();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: MouseRegion(
        onEnter: (event) {
          onEntered(true);
        },
        onExit: (event) {
          onEntered(false);
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onPass,
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: isHovered == false ? widget.color1 : widget.color2,
            ),
            child: Center(
              child: Text(
                widget.content,
                style: widget.textStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
