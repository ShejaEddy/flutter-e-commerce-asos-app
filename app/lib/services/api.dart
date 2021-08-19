import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_asos_app/models/Category.dart';
import 'package:flutter_asos_app/models/Product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_asos_app/secrets.dart';

const BASE_URL = Secrets.API_URL;

Map<String, String> headers = {
  "Content-type": "application/json",
  "x-rapidapi-key": "2ccda791a9mshcfd9136f5b996bep14f4bejsnc38c6e62b61a",
  "x-rapidapi-host": "asos2.p.rapidapi.com"
};

Future<ProductList> fetchProducts() async {
  try {
    var url = BASE_URL +
        '/products/v2/list?offset=0&limit=48&sort=freshness&categoryId=4209&lang=en-US&country=RW';
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    debugPrint(response.body);
    return ProductList.fromJson(json.decode(response.body));
  } catch (e) {
    print('Error happened =====>$e');
    return ProductList();
  }
}

Future<Category> fetchCategories() async {
  try {
    var url = BASE_URL + '/categories/list?lang=en-US&country=RW';
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    debugPrint(response.body);
    return Category.fromJson(json.decode(response.body));
  } catch (e) {
    print('Error happened =====>$e');
    return Category();
  }
}
