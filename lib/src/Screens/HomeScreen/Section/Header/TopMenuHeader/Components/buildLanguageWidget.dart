// ignore_for_file: file_names, use_build_context_synchronously, camel_case_types
import 'package:ako_shop/src/Localization/LanguageConstants.dart';
import 'package:ako_shop/src/Models/LanguageModel.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:ako_shop/src/app.dart';
import 'package:flutter/material.dart';

class buildLanguageWidget extends StatefulWidget {
  const buildLanguageWidget({super.key});

  @override
  State<buildLanguageWidget> createState() => _buildLanguageWidgetState();
}

class _buildLanguageWidgetState extends State<buildLanguageWidget> {
  bool isHoveredLanguage = false;
  String languageCode = "ພາສາລາວ";

  void _changeLanguage(Language language) async {
    Locale locale = await setLocale(language.languageCode!);
    MyApp.setLocale(context, locale);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEnteredLanguage(true);
      },
      onExit: (event) {
        onEnteredLanguage(false);
      },
      cursor: SystemMouseCursors.click,
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        position: PopupMenuPosition.under,
        child: Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.language,
                color:
                    isHoveredLanguage == false ? Colors.white : Colors.white38,
                size: socialIconSize,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              languageCode, //"ช่วยเหลือ",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color:
                    isHoveredLanguage == false ? Colors.white : Colors.white38,
              ),
            ),
          ],
        ),
        itemBuilder: (context) => <PopupMenuEntry>[
          ...Language.languageList().map(
            (index) => PopupMenuItem(
              onTap: () {
                _changeLanguage(index);
                setState(() {
                  languageCode = index.name!;
                });
              },
              value: index,
              child: Text(index.name!),
            ),
          ),
        ].toList(),
      ),
    );
  }

  void onEnteredLanguage(bool isHoveredLanguage) {
    setState(() {
      this.isHoveredLanguage = isHoveredLanguage;
    });
  }
}
