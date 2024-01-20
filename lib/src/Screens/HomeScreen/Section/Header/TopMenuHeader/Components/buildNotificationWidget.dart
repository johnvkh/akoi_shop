// ignore_for_file: file_names, camel_case_types
import 'package:ako_shop/src/Localization/LanguageConstants.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class buildNotificationWidget extends StatefulWidget {
  const buildNotificationWidget({
    super.key,
  });
  @override
  State<buildNotificationWidget> createState() =>
      _buildNotificationWidgetState();
}

class _buildNotificationWidgetState extends State<buildNotificationWidget> {
  bool isHoveredNotification = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEnteredNotification(true);
      },
      onExit: (event) {
        onEnteredNotification(false);
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Icon(
                FontAwesomeIcons.bell,
                color: isHoveredNotification == false
                    ? Colors.white
                    : Colors.white38,
                size: socialIconSize,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              getTranslated(context, 'NOTIFICATION')!,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: isHoveredNotification == false
                    ? Colors.white
                    : Colors.white38,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onEnteredNotification(bool isHoveredNotification) {
    setState(() {
      this.isHoveredNotification = isHoveredNotification;
    });
  }
}
