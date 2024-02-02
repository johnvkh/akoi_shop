import 'package:ako_shop/src/Utility/Components/IconTextButtonWidget.dart';
import 'package:ako_shop/src/Utility/Components/ImageButtonWidget.dart';
import 'package:ako_shop/src/Utility/Components/Utils.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import '../ConstantLocal.dart';
import 'TextButtonWidget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    double diverSize = 0.12;
    print("footer${screenSize.width}");
    if (screenSize.width >= 950 && screenSize.width <= 1270) {
      diverSize = 0.18;
      print("footer 1");
    } else if (screenSize.width >= 1271 && screenSize.width <= 1370) {
      diverSize = 0.162;
      print("footer 2");
    } else {
      print("footer 3");
      diverSize = 0.14;
    }
    return SizedBox(
      height: 420,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHelpCenter(screenSize, diverSize),
              buildAboutLalaShop(screenSize, diverSize),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "วิธีการชำระเงิน",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  buildAboutPayment(screenSize, diverSize),
                  const SizedBox(height: 20),
                  const Text(
                    "บริการจัดส่ง",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  buildShipping(screenSize, diverSize),
                ],
              ),
              buildFollowUs(screenSize, diverSize),
              buildDownloadApp(screenSize, diverSize),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: Colors.redAccent,
              thickness: 2,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("© 2024 Shopee. All Rights Reserved"),
              Text("Country & Region: Laos"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildHelpCenter(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "ศูนย์ช่วยเหลือ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          TextButtonWidget(
            onPass: () {},
            content: "Help Centre",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "สั่งซื้อสินค้าอย่างไร",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "เริ่มขายสินค้าอย่างไร",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "ช่องทางการชำระเงินใน Shopee",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "Shopee Coins",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "การจัดส่งสินค้า",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "การคืนเงินและคืนสินค้า",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "การันตีโดย Shopee คืออะไร?",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
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

  Widget buildAboutLalaShop(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "เกี่ยวกับ LalaShop",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          TextButtonWidget(
            onPass: () {},
            content: "เกี่ยวกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "โปรแกรม Affiliate",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "ร่วมงานกับเรา",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายของ LalaShop",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "นโยบายความเป็นส่วนตัว",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Blog",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "LalaShop Mall",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          TextButtonWidget(
            onPass: () {},
            content: "Seller Centre",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
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

  Widget buildAboutPayment(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize + 20,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/bcelOne.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/jdb.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/LDB.jpg",
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/lvb.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/umony.jpg",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/m_money.png",
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/masterCard.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/visa.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/payment/unionPay.png",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildShipping(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize + 20,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/shipping/anousith.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/shipping/captain.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                width: 55,
                height: 25,
                onTap: () {},
                image: "assets/image/shipping/hungaloun.png",
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              ImageButtonWidget(
                onTap: () {},
                width: 55,
                height: 25,
                image: "assets/image/shipping/dhl.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                onTap: () {},
                width: 55,
                height: 25,
                image: "assets/image/shipping/flash.png",
              ),
              const SizedBox(width: 5),
              ImageButtonWidget(
                onTap: () {},
                width: 55,
                height: 25,
                image: "assets/image/shipping/psv.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFollowUs(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize - 20,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "ศูนย์ช่วยเหลือ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          IconTextButtonWidget(
            icon: FontAwesomeIcons.facebookSquare,
            onPass: () {},
            content: "Facebook",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          IconTextButtonWidget(
            icon: FontAwesomeIcons.instagram,
            onPass: () {},
            content: "Instagram",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 5),
          IconTextButtonWidget(
            icon: FontAwesomeIcons.line,
            onPass: () {},
            content: "Line",
            color1: Colors.black87,
            color2: Colors.redAccent,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }

  Widget buildDownloadApp(Size screenSize, double diverSize) {
    return Container(
      width: screenSize.width * diverSize,
      decoration: const BoxDecoration(
        color: footerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "ดาวน์โหลดแอปพลิเคชั่น",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ImageButtonWidget(
                width: 80,
                height: 80,
                onTap: () {},
                image: "assets/image/qr_download_app.png",
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  ImageButtonWidget(
                    width: 75,
                    height: 20,
                    onTap: () {},
                    image: "assets/image/ios.png",
                  ),
                  const SizedBox(height: 10),
                  ImageButtonWidget(
                    width: 75,
                    height: 20,
                    onTap: () {},
                    image: "assets/image/android.png",
                  ),
                  const SizedBox(height: 10),
                  ImageButtonWidget(
                    width: 75,
                    height: 20,
                    onTap: () {},
                    image: "assets/image/app_gallery.png",
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
