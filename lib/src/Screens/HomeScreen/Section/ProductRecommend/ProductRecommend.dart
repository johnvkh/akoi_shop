// ignore_for_file: file_names

import 'package:ako_shop/src/Models/ProductModel.dart';
import 'package:ako_shop/src/Utility/Components/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../Utility/Components/Utils.dart';
import '../../../../Utility/ConstantLocal.dart';

class ProductRecommend extends StatefulWidget {
  const ProductRecommend({super.key});

  @override
  State<ProductRecommend> createState() => _ProductRecommendState();
}

class _ProductRecommendState extends State<ProductRecommend> {
  Size screenSize = Utils().getScreenSize();

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> listProduct = [
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: false,
        codeDiscount: false,
        codeAmountDiscount: 30,
        isDiscount: false,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: false,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
      ProductModel(
        imageProduct: "assets/image/product/Morefand.jpg",
        titleProduct:
            "เครื่องผสมสัญญาณเสียงระดับมืออาชีพ 4 ช่อง 48V Phantom Power อินเทอร์เฟซ USB Bluetooth Home Live",
        priceProduct: 650,
        saledAmount: 1,
        discount: 50,
        recommendShop: true,
        codeDiscount: true,
        codeAmountDiscount: 30,
        isDiscount: true,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const paddingLeftRigthPage(),
          Column(
            children: [
              Container(
                width: screenSize.width * 0.65,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
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
                    Divider(
                      color: Colors.redAccent,
                      thickness: 4,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: screenSize.width * 0.65,
                child: buildProductRecommendGrid(context, listProduct),
              ),
              ButtonWidget(
                width: screenSize.width * 0.2,
                height: 40,
                onPass: () {},
                content: "ดูเพิ่มเติม",
                color1: Colors.white,
                color2: Color.fromRGBO(240, 240, 240, 1),
                textStyle: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const paddingLeftRigthPage(),
        ],
      ),
    );
  }

  Widget buildProductRecommendGrid(
      BuildContext context, List<ProductModel> listProduct) {
    return SizedBox(
      width: screenSize.width * 0.65,
      // height: 2450,
      child: ResponsiveStaggeredGridList(
          desiredItemWidth: 190,
          // minSpacing: 10,
          children:
              List.generate(listProduct.length, (index) => index).map((i) {
            final ProductModel product = listProduct[i];
            return Column(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Stack(children: [
                      Container(
                        width: 190,
                        height: 295,
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
                              product.imageProduct.toString(),
                            ),
                            const SizedBox(height: 2),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                                top: 5,
                              ),
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                product.titleProduct.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      product.isDiscount == true
                          ? Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 40,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 233, 122, 1),
                                ),
                                child: Text(
                                  "-${product.discount}%",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.redAccent,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          : const SizedBox(),
                      product.recommendShop == true
                          ? Positioned(
                              left: 0,
                              top: 8,
                              child: Image.asset(
                                "assets/image/recommendShop.png",
                                width: 55,
                                height: 25,
                                //color: Color.fromRGBO(246, 145, 19, 1),
                                //fit: BoxFit.fill,
                              ),
                            )
                          : const SizedBox(),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          "฿${product.priceProduct}",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.redAccent,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Text(
                          "ขายแล้ว ${product.saledAmount} ชิ้น",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      product.codeDiscount == true
                          ? Positioned(
                              left: 8,
                              bottom: 35,
                              child: Image.asset(
                                "assets/image/ticket.png",
                                width: 60,
                                height: 28,
                                color: const Color.fromRGBO(246, 145, 19, 1),
                                fit: BoxFit.fill,
                              ),
                            )
                          : const SizedBox(),
                      product.codeDiscount == true
                          ? Positioned(
                              left: 14,
                              bottom: 40,
                              child: Text(
                                "โค้ดลด ฿${product.codeAmountDiscount}",
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : const SizedBox(),
                    ]),
                  ),
                ),
              ],
            );
          }).toList()),
    );
  }
}
