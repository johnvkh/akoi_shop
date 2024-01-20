// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class buildRigthButton extends StatefulWidget {
  const buildRigthButton({
    super.key,
    required this.onTapEven,
  });

  final VoidCallback onTapEven;

  @override
  State<buildRigthButton> createState() => _buildRigthButtonState();
}

class _buildRigthButtonState extends State<buildRigthButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 0,
      child: MouseRegion(
        onEnter: (event) {
          onEntered(true);
        },
        onExit: (event) {
          onEntered(false);
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTapEven,
          child: Container(
            width: 30,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: isHovered == false
                    ? const Color.fromRGBO(245, 245, 245, 0.5)
                    : const Color.fromRGBO(81, 81, 81, 0.5),
              ),
              color: isHovered == false
                  ? const Color.fromRGBO(245, 245, 245, 0.5)
                  : const Color.fromRGBO(81, 81, 81, 0.5),
            ),
            child: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
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
