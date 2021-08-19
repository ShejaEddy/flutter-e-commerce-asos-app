import 'package:flutter/material.dart';
import 'package:flutter_asos_app/helper/_utils.dart';
import '../../../components/_star_rating.dart' show showStarRating;
import '../../../models/Product.dart';

buildCard(Product product) {
  return Padding(
    padding: EdgeInsets.all(2),
    child: Card(
      elevation: 4,
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: GridTile(
          header: Padding(
            padding: EdgeInsets.all(12),
            child: imageIcon(product),
          ),
          footer: _buildPriceRating(product),
          child: Container(),
        ),
      ),
    ),
  );
}

Padding _buildPriceRating(Product product) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titlePrice(product),
        SizedBox(height: 8),
        showStarRating(3.0, Colors.yellow[900])
      ],
    ),
  );
}

Text description(Product product) {
  return Text(
    product.name,
    maxLines: 2,
  );
}

Padding _titlePrice(Product product) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        Text(
          product.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '${product.price.currency} ${product.price.current.value}',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 12),
          ),
          if (product.price.previous.value != null)
            Text(
              '${product.price.currency} ${product.price.previous.value}',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 12),
            )
        ])
      ],
    ),
  );
}

Image imageIcon(Product product) {
  return Image.network(
    getValidImage(product.imageUrl),
    fit: BoxFit.cover,
    height: 100,
    width: 100,
  );
}
