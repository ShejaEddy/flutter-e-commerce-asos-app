import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_asos_app/screen/cart/cart_page.dart';
import 'package:get/get.dart';

AppBar buildActionBar() {
  return AppBar(
    backgroundColor: Colors.grey.shade200,
    elevation: 0,
    title: Text(
      'ASOS Shop',
      style: TextStyle(
          fontSize: 21, fontWeight: FontWeight.bold, color: Colors.teal),
    ),
    actions: [
      GestureDetector(
        onTap: () => Get.to(CartPage()),
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            CupertinoIcons.cart,
            size: 25,
            color: Colors.black87,
          ),
        ),
      ),
    ],
  );
}
