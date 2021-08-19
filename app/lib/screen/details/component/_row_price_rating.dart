import 'package:flutter/material.dart';
import 'package:flutter_asos_app/models/Product.dart';

import '../../../components/_star_rating.dart';

Row buildRowPriceRating(Product product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Price: ${product.price.currency}${product.price.current.value}",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
      showStarRating(3.0, Colors.white)
    ],
  );
}
