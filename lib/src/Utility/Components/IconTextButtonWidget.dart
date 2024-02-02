import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class IconTextButtonWidget extends StatefulWidget {
  const IconTextButtonWidget({
    super.key,
    required this.icon,
    required this.onPass,
    required this.content,
    required this.color1,
    required this.color2,
    required this.fontSize,
    required this.fontWeight,
  });

  final IconData icon;
  final VoidCallback onPass;
  final String content;
  final Color color1;
  final Color color2;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  State<IconTextButtonWidget> createState() => _IconTextButtonWidgetState();
}

class _IconTextButtonWidgetState extends State<IconTextButtonWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEntered(true);
      },
      onExit: (event) {
        onEntered(false);
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPass,
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: isHovered == false ? widget.color1 : widget.color2,
            ),
            const SizedBox(width: 5),
            Text(
              widget.content,
              style: TextStyle(
                fontFamily: 'roboto',
                color: isHovered == false ? widget.color1 : widget.color2,
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
              ),
              maxLines: 2,
            ),
          ],
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
