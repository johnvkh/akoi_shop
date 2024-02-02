// ignore_for_file: file_names
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/Components/buildIndication.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/Components/buildLeftButton.dart';
import 'package:ako_shop/src/Screens/HomeScreen/Section/Banner/Components/buildRigthButton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../Utility/Components/Utils.dart';

class SlideBanner extends StatefulWidget {
  const SlideBanner({super.key});

  @override
  State<SlideBanner> createState() => _SlideBannerState();
}

class _SlideBannerState extends State<SlideBanner> {
  final List<String> imageList = [
    'assets/image/1.jpg',
    'assets/image/2.jpg',
    'assets/image/3.jpg',
    'assets/image/4.jpg',
    'assets/image/5.jpg',
    'assets/image/6.jpg',
    'assets/image/7.jpg',
    'assets/image/8.jpg',
    'assets/image/9.jpg',
    'assets/image/10.jpg',
  ];

  int? _current;
  final CarouselController buttonCarouselController = CarouselController();

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    int flex = 15;
    int mainflexContent = 70;
    if (screenSize.width >= 950 && screenSize.width <= 1270) {
      flex =30;
      mainflexContent = 90;
    } else if (screenSize.width >= 1271 && screenSize.width <= 1370) {
      flex = 30;
      mainflexContent = 80;
    } else {
      flex = 30;
      mainflexContent = 100;
    }
    return Row(
      children: [
        Expanded(
          flex: mainflexContent,
          child: Container(
            child: Stack(
              children: [
                buildSliderBannerProduct(),
                buildIndication(imageList: imageList, current: _current!),
                buildLeftButton(
                  onTapEven: () {
                    buttonCarouselController.previousPage();
                  },
                ),
                buildRigthButton(
                  onTapEven: () {
                    buttonCarouselController.nextPage();
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          flex: flex,
          child: SizedBox(
            child: Column(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      // width: MediaQuery.of(context).size.width * dividerSizeSub,
                      height: 115,
                      child: Image.asset("assets/image/banner_first_shoice.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      // width: MediaQuery.of(context).size.width * dividerSizeSub,
                      height: 115,
                      child: Image.asset("assets/image/banner_super_market.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSliderBannerProduct() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          height: 235,
          child: CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              // aspectRatio: 1.873,
              aspectRatio: 2,
              viewportFraction: 1.0,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageList
                .map(
                  (item) => Image.asset(
                item,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
                .toList(),
          ),

        ),
      ),
    );
  }
}
