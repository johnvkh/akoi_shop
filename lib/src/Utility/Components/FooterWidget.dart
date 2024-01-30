import 'package:ako_shop/src/Utility/Components/Utils.dart';
import 'package:flutter/material.dart';

import '../ConstantLocal.dart';
import 'TextButtonWidget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Row(
      children: [
        buildHelpCenter(screenSize),
        buildAboutLalaShop(screenSize),
        buildHelpCenter(screenSize),
        buildHelpCenter(screenSize),
      ],
    );
  }


  Widget buildHelpCenter(Size screenSize) {
    return Container(
        width: screenSize.width * 0.13,
        height: 400,
        decoration: BoxDecoration(
          color: footerBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text("ศูนย์ช่วยเหลือ"),
            SizedBox(height: 15),
            TextButtonWidget(
              onPass: () {},
              content: "Help Centre",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "สั่งซื้อสินค้าอย่างไร",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "เริ่มขายสินค้าอย่างไร",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "ช่องทางการชำระเงินใน Shopee",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "Shopee Coins",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "การจัดส่งสินค้า",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "การคืนเงินและคืนสินค้า",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "การันตีโดย Shopee คืออะไร?",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            TextButtonWidget(
              onPass: () {},
              content: "ติดต่อ Shopee",
              color1: Colors.black87,
              color2: Colors.redAccent,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      );
  }

  Widget buildAboutLalaShop(Size screenSize) {
    return Container(
      width: screenSize.width * 0.13,
      height: 400,
      decoration: BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text("เกี่ยวกับ LalaShop"),
          SizedBox(height: 15),
          TextButtonWidget(
            onPass: () {},
            content: "เกี่ยวกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "โปรแกรม Affiliate",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "ร่วมงานกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายของ LalaShop",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายความเป็นส่วนตัว",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Blog",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Mall",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "Seller Centre",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "ผู้ติดต่อออนไลน์",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );

  }

  Widget buildAboutPayment(Size screenSize) {
    return Container(
      width: screenSize.width * 0.13,
      height: 400,
      decoration: BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text("เกี่ยวกับ LalaShop"),
          SizedBox(height: 15),
          TextButtonWidget(
            onPass: () {},
            content: "เกี่ยวกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "โปรแกรม Affiliate",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "ร่วมงานกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายของ LalaShop",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายความเป็นส่วนตัว",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Blog",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Mall",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "Seller Centre",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          TextButtonWidget(
            onPass: () {},
            content: "ผู้ติดต่อออนไลน์",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );

  }

}
