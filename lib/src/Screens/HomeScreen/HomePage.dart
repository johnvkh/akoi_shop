// ignore_for_file: file_names

import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/MenuBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/SlideBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Catalog/CatalogGrid.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/HeaderWidget.dart';
import 'package:ako_shop/src/Utility/Components/FooterWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utility/Components/Utils.dart';
import '../../Utility/ConstantLocal.dart';
import 'Section/ProductRecommend/ProductRecommend.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      backgroundColor: contentBackgroundColor,
      body: ScreenTypeLayout(
        desktop: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  height: 119,
                ),
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.2,
                      blurRadius: 7,
                      offset: const Offset(0, 1),
                    ),
                  ]),
                  // child: Row(
                  //   children: [
                  //     const paddingLeftRigthPage(colors: backgroundColor),
                  //     SizedBox(
                  //       width: MediaQuery.of(context).size.width * 0.65,
                  //       child: const Column(
                  //         children: [
                  //           Padding(
                  //             padding: EdgeInsets.only(top: 20),
                  //             child: SlideBanner(),
                  //           ),
                  //           Padding(
                  //             padding: EdgeInsets.only(top: 10),
                  //             child: MenuBanner(),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     const paddingLeftRigthPage(colors: backgroundColor),
                  //   ],
                  // ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: flex,
                        child: Container(),
                      ),
                      Expanded(
                        flex: flexContent,
                        child: const SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: SlideBanner(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: MenuBanner(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: flex,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                const CatalogGrid(),
                Row(
                  children: [
                    Expanded(
                      flex: flex,
                      child: const SizedBox(),
                    ),
                    Expanded(
                      flex: flexContent,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  //width: MediaQuery.of(context).size.width*0.65,
                                  height: 50,
                                  color: backgroundColor,
                                  child: const Center(
                                    child: Text(
                                      "สินค้าแนะนำประจำวัน",
                                      style: TextStyle(
                                        fontFamily: 'roboto',
                                        color: Colors.redAccent,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.redAccent,
                                thickness: 4,
                              ),
                            ],
                          ),
                          const ProductRecommend(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: flex,
                      child: const SizedBox(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: flex,
                      child: Container(
                        color: footerBackgroundColor,
                        height: 420,
                      ),
                    ),
                    Expanded(
                      flex: flexContent,
                      child: Container(
                        color: footerBackgroundColor,
                        child: const FooterWidget(),
                      ),
                    ),
                    Expanded(
                      flex: flex,
                      child: Container(
                        color: footerBackgroundColor,
                        height: 420,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const HeaderWidget(),
        ]),
        tablet: const Text("tablet"),
        mobile: const Text("mobile"),
      ),
    );
  }
}
