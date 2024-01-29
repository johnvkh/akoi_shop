// ignore_for_file: file_names

import 'package:ako_shop/src/Localization/LanguageConstants.dart';
import 'package:ako_shop/src/Models/MenuBannerModel.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:flutter/material.dart';

class CatalogGrid extends StatelessWidget {
  const CatalogGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuBannerModel> listMenu = [
      MenuBannerModel(
          title: getTranslated(context, 'BEAUTY_PERSONAL_CARE')!,
          image: "assets/image/catalogs/01_beauty_personal_care.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MEN_CLOTHES')!,
          image: "assets/image/catalogs/02_men_clothes.png"),
      MenuBannerModel(
          title: getTranslated(context, 'BAGS')!,
          image: "assets/image/catalogs/03_bags.png"),
      MenuBannerModel(
          title: getTranslated(context, 'WOMEN_SHOES')!,
          image: "assets/image/catalogs/04_women_shoes.png"),
      MenuBannerModel(
          title: getTranslated(context, 'WATCHES_GLASSES')!,
          image: "assets/image/catalogs/05_watches_glasses.png"),
      MenuBannerModel(
          title: getTranslated(context, 'HOME_ENTERTAINMENT')!,
          image: "assets/image/catalogs/06_home_entertainment.png"),
      MenuBannerModel(
          title: getTranslated(context, 'HOME_APPLIANCES')!,
          image: "assets/image/catalogs/07_home_appliances.png"),
      MenuBannerModel(
          title: getTranslated(context, 'CAMERAS')!,
          image: "assets/image/catalogs/08_cameras.png"),
      MenuBannerModel(
          title: getTranslated(context, 'BABY_TOYS')!,
          image: "assets/image/catalogs/09_baby_toys.png"),
      MenuBannerModel(
          title: getTranslated(context, 'PETS')!,
          image: "assets/image/catalogs/10_pets.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MOTORS')!,
          image: "assets/image/catalogs/11_motors.png"),
      MenuBannerModel(
          title: getTranslated(context, 'HEALTH_WELLNESS')!,
          image: "assets/image/catalogs/12_health_wellness.png"),
      MenuBannerModel(
          title: getTranslated(context, 'WOMEN_CLOTHES')!,
          image: "assets/image/catalogs/13_women_clothes.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MEN_SHOES')!,
          image: "assets/image/catalogs/14_men_shoes.png"),
      MenuBannerModel(
          title: getTranslated(context, 'FASHION_ACCESSORIES')!,
          image: "assets/image/catalogs/15_fashion_accessories.png"),
      MenuBannerModel(
          title: getTranslated(context, 'HOME_LIVING')!,
          image: "assets/image/catalogs/16_home_living.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MOBILE_GADGETS')!,
          image: "assets/image/catalogs/17_mobile_gadgets.png"),
      MenuBannerModel(
          title: getTranslated(context, 'COMPUTERS_LAPTOPS')!,
          image: "assets/image/catalogs/18_computers_laptops.png"),
      MenuBannerModel(
          title: getTranslated(context, 'FOOD_BEVERAGES')!,
          image: "assets/image/catalogs/19_food_beverages.png"),
      MenuBannerModel(
          title: getTranslated(context, 'SPORTS_OUTDOORS')!,
          image: "assets/image/catalogs/20_sports_outdoors.png"),
      MenuBannerModel(
          title: getTranslated(context, 'GAMING_ACCESSORIES')!,
          image: "assets/image/catalogs/21_gaming_accessories.png"),
      MenuBannerModel(
          title: getTranslated(context, 'BOOKS_HOBBIES')!,
          image: "assets/image/catalogs/22_books_hobbies.png"),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const paddingLeftRigthPage(colors: Color.fromRGBO(245, 245, 245, 1)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child:
                    Image.asset("assets/image/load_app.jpg", fit: BoxFit.fill),
              ),
              const SizedBox(height: 20),
              buildCatalogGrid(context, listMenu),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Image.asset(
                  "assets/image/catalogs/discount_banner.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ]),
          ),
          const paddingLeftRigthPage(colors: Color.fromRGBO(245, 245, 245, 1)),
        ],
      ),
    );
  }

  Widget buildCatalogGrid(
      BuildContext context, List<MenuBannerModel> listMenu) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: 393,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "หมวดหมู่",
              style: TextStyle(
                fontFamily: 'roboto',
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            height: 340,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                final MenuBannerModel menu = listMenu[index];
                return Column(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          width: 140,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.black12,
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                menu.image.toString(),
                              ),
                              const SizedBox(height: 2),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Text(
                                  softWrap: true,
                                  menu.title.toString(),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
