// ignore_for_file: file_names

class ProductModel {
  String? imageProduct;
  String? titleProduct;
  double? priceProduct;
  int? saledAmount;
  int? discount;
  bool? isDiscount;
  bool? recommendShop;
  bool? codeDiscount;
  int? codeAmountDiscount;

  ProductModel({
    this.imageProduct,
    this.titleProduct,
    this.priceProduct,
    this.saledAmount,
    this.discount,
    this.isDiscount,
    this.recommendShop,
    this.codeDiscount,
    this.codeAmountDiscount,
  });
}
