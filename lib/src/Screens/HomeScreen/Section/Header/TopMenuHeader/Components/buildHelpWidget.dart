// ignore_for_file: file_names, camel_case_types

import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '../../../../../../Localization/LanguageConstants.dart';
class buildHelpWidget extends StatefulWidget {
  const buildHelpWidget({super.key});

  @override
  State<buildHelpWidget> createState() => _buildHelpWidgetState();
}

class _buildHelpWidgetState extends State<buildHelpWidget> {
  bool isHoveredHepl = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEnteredHelp(true);
      },
      onExit: (event) {
        onEnteredHelp(false);
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color:
                isHoveredHepl == false ? Colors.white : Colors.white38,
                size: socialIconSize,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              getTranslated(context, 'HELP')!,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color:
                isHoveredHepl == false ? Colors.white : Colors.white38,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onEnteredHelp(bool isHoveredHepl) {
    setState(() {
      this.isHoveredHepl = isHoveredHepl;
    });
  }
}
