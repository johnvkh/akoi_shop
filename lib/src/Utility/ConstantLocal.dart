// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';

const backgroundColor = Color.fromRGBO(255, 255, 255, 1);
const footerBackgroundColor = Color.fromRGBO(251, 251, 251, 1);
const contentBackgroundColor = Color.fromRGBO(245, 245, 245, 1);
const double socialIconSize = 16;

class paddingLeftRigthPage extends StatelessWidget {
  const paddingLeftRigthPage({
    super.key,
    required this.colors,
  });

  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors,
      constraints: const BoxConstraints(
        minWidth: 10,
      ),
      width: MediaQuery.of(context).size.width * 0.175,
    );
  }
}
