import 'package:flutter/material.dart';
import 'package:flutter_asos_app/models/Category.dart';
import 'package:flutter_asos_app/models/Product.dart';
import '../../details/detail_page.dart';
import 'package:get/get.dart';

import '_build_category_card.dart';
import '_build_popular_card.dart';

ListView category(Category categoryList) {
  return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: categoryList.brands.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {Get.to(ProductDetail())},
          child: buildPopularCard(categoryList.brands[index]),
        );
      });
}

GridView mostPopularProduct(context, ProductList productList) {
  return GridView.count(
    crossAxisCount: 2,
    children: List.generate(productList.products.length, (index) {
      return GestureDetector(
        onTap: () =>
            Get.to(ProductDetail(product: productList.products[index])),
        child: buildCard(productList.products[index]),
      );
    }),
  );
}
