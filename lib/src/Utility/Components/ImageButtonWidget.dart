import 'package:flutter/material.dart';

import '../ConstantLocal.dart';

class ImageButtonWidget extends StatefulWidget {
  const ImageButtonWidget({
    super.key,
    required this.onTap,
    required this.image,
    required this.width,
    required this.height,
  });

  final VoidCallback onTap;
  final String image;
  final double width;
  final double height;

  @override
  State<ImageButtonWidget> createState() => _ImageButtonWidgetState();
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width:  widget.width,
        height:  widget.height,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.2,
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ]),
        child: Image.asset(
          widget.image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
