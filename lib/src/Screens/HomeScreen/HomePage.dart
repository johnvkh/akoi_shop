// ignore_for_file: file_names

import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/MenuBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/SlideBanner.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Catalog/CatalogGrid.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/HeaderWidget.dart';
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
          //controller: _scrollController,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                height: 139,
              ),
              Container(
                height: 362,
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
                    const paddingLeftRigthPage(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: const Column(
                        children: [
                          SlideBanner(),
                          MenuBanner(),
                        ],
                      ),
                    ),
                    const paddingLeftRigthPage(),
                  ],
                ),
              ),
              const CatalogGrid(),
              const ProductRecommend(),
              Container(
                height: 1500,
                width: double.infinity,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
        const HeaderWidget(),
      ]),
    );
  }
}
