import 'package:ako_shop/src/Utility/Components/Utils.dart';
import 'package:flutter/material.dart';

import '../ConstantLocal.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const paddingLeftRigthPage(colors: Color.fromARGB(255, 255, 255, 1)),
          Container(
            width: screenSize.width * 0.65,
            height: 400,
          ),
          const paddingLeftRigthPage(colors: Color.fromARGB(255, 255, 255, 1)),
        ],
      ),
    );
  }
}
