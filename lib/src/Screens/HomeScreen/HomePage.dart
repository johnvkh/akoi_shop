// ignore_for_file: file_names

import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/MenuBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/SlideBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Catalog/CatalogGrid.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/HeaderWidget.dart';
import 'package:ako_shop/src/Utility/Components/FooterWidget.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
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
                child: Row(
                  children: [
                    const paddingLeftRigthPage(colors: backgroundColor),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: const Column(
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
                    const paddingLeftRigthPage(colors: backgroundColor),
                  ],
                ),
              ),
              const CatalogGrid(),
              Row(
                children: [
                  const paddingLeftRigthPage(colors: contentBackgroundColor),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      // color: contentBackgroundColor,
                      child: const ProductRecommend()),
                  const paddingLeftRigthPage(colors: contentBackgroundColor),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: footerBackgroundColor,
                    width: MediaQuery.of(context).size.width * 0.175,
                    height: 400,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    color: footerBackgroundColor,
                    child: const FooterWidget(),
                  ),
                  Container(
                    color: footerBackgroundColor,
                    width: MediaQuery.of(context).size.width * 0.175,
                    height: 400,
                  ),
                ],
              ),
            ],
          ),
        ),
        const HeaderWidget(),
      ]),
    );
  }
}
