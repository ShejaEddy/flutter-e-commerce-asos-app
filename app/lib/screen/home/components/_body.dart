import 'package:flutter/material.dart';
import 'package:flutter_asos_app/models/Category.dart';
import 'package:flutter_asos_app/services/api.dart';
import 'package:get/get.dart';
import '../../../constant.dart';
import '../../../models/Product.dart';
import '_categories.dart';
import '_product_category.dart';
import '_search_filter_view.dart';

Column detailBody(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildSearchRow(),
      SizedBox(height: kSpace),
      section('Categories'),
      SizedBox(height: kSpace),
      Container(
        height: 140,
        child: FutureBuilder<Category>(
            future: fetchCategories(),
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return category(snapshot.data);
              else
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Loading...',
                    style: TextStyle(fontSize: 13),
                  ),
                );
            }),
      ),
      SizedBox(height: kSpace),
      section('Most popular'),
      SizedBox(height: kSpace),
      Expanded(
        child: FutureBuilder<ProductList>(
            future: fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return mostPopularProduct(context, snapshot.data);
              else
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Loading...',
                    style: TextStyle(fontSize: 13),
                  ),
                );
            }),
      )
    ],
  );
}
