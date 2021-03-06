import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_asos_app/components/_close_activity.dart';

AppBar detailAppBar(product) {
  return AppBar(
    elevation: 0,
    backgroundColor: product.color,
    title: Text(
      product.title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: closeActivity(),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.all(8),
        child: CircleAvatar(
          child: Icon(
            CupertinoIcons.cart,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
