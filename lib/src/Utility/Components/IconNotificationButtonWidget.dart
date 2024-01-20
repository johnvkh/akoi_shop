// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconNotificationButtonWidget extends StatelessWidget {
  const IconNotificationButtonWidget({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.notificaton,
  });

  final VoidCallback onPressed;
  final Icon icon;
  final int notificaton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
          color: Colors.white,
          iconSize: 28,
        ),
        notificaton == 0
            ? const SizedBox()
            : Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 22,
                    minWidth: 22,
                  ),
                  child: Text(
                    "$notificaton",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
      ],
    );
  }
}
