// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class buildBuildInputSearch extends StatelessWidget {
  const buildBuildInputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    const sizeIcon = BoxConstraints(minWidth: 40, minHeight: 40);
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
    );
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(4),
          //isDense: true,
          enabledBorder: border,
          focusedBorder: border,
          suffixIcon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 70,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          filled: true,
          suffixIconConstraints: sizeIcon,
          //prefixIcon: SizedBox(),
          prefixText: "  ",
          hintText: " ถูกชัวร์ | เจอถูกกว่า คืนส่วนต่าง 100%",
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
