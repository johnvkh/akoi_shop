// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.press,
    required this.widgetIcon,
  }) : super(key: key);
  final VoidCallback press;
  final Widget widgetIcon;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: press,
        child: widgetIcon,
      ),
    );
  }
}
