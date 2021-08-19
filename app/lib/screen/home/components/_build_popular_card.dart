import 'package:flutter/material.dart';
import 'package:flutter_asos_app/models/Category.dart';

buildPopularCard(Brand brand) {
  return Padding(
      padding: EdgeInsets.all(2),
      child: GestureDetector(
        onTap: () {
          // Get.to(brandDetail(brand: brand));
        },
        child: _brandCard(brand),
      ));
}

Container _brandCard(Brand brand) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.teal,
            Colors.blue,
          ],
        ),
        borderRadius: BorderRadius.circular(10)),
    child: Card(
      color: Colors.transparent,
      elevation: 8,
      child: GridTile(
        child: Column(
          children: [
            _imageIcon(brand),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: _title(brand),
            ),
          ],
        ),
      ),
    ),
  );
}

Text _title(Brand brand) {
  return Text(
    brand.content.title,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Container _imageIcon(Brand brand) {
  return Container(
      height: 100,
      width: 120,
      padding: EdgeInsets.all(20),
      child: brand.content.mobileImageUrl != null
          ? Image.asset(
              brand.content.mobileImageUrl,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
            )
          : Container(
              height: 80,
              width: 80,
              // decoration: BoxDecoration(color: Colors.black87),
            ));
}
