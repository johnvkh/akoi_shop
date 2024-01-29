// ignore_for_file: file_names, use_build_context_synchronously, non_constant_identifier_names
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/SectionMiniMenuHeader/SectionMiniMenu.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:flutter/material.dart';
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
          Container(
            width: MediaQuery.of(context).size.width * 0.175,
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
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width * 0.65,
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
          Container(
            width: MediaQuery.of(context).size.width * 0.175,
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
        ],
      ),
    );
  }
}
