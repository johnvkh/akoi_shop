// ignore_for_file: file_names, use_build_context_synchronously, non_constant_identifier_names
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/SectionMiniMenuHeader/SectionMiniMenu.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:flutter/material.dart';
import '../../../../Utility/Components/Utils.dart';
import 'SearchHearTop/SectionSearch.dart';
import 'TopMenuHeader/SectionTopMenuHeader.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  final vertacaDivider = const VerticalDivider(
    indent: 5,
    endIndent: 5,
    thickness: 1.5,
    color: Colors.white38,
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    int flex = 15;
    int flexContent = 70;
    if (screenSize.width >= 950 && screenSize.width <= 1270) {
      flex = 5;
      flexContent = 90;
    } else if (screenSize.width >= 1271 && screenSize.width <= 1370) {
      flex = 10;
      flexContent = 80;
    } else {
      flex = 15;
      flexContent = 70;
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 119,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffF53E2D),
              Color(0xFFFF6633),
            ]),
      ),
      child: Row(
        children: [
          Expanded(
            flex: flex,
            child: Container(
              height: 119,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffF53E2D),
                      Color(0xFFFF6633),
                    ]),
              ),
            ),
          ),
          Expanded(
            flex: flexContent,
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              // width: MediaQuery.of(context).size.width * 0.65,
              child: const Column(
                children: [
                  SectionTopMenuHeader(),
                  SizedBox(height: 10),
                  SectionSearch(),
                  SizedBox(height: 10),
                  SectionMiniMenu(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: flex,
            child: Container(
              height: 119,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffF53E2D),
                      Color(0xFFFF6633),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
