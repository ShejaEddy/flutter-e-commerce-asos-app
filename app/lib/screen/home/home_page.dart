import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_asos_app/screen/cart/cart_page.dart';
import 'package:flutter_asos_app/screen/home/components/_action_bar.dart';
import 'package:flutter_asos_app/screen/home/components/_body.dart';
import 'package:get/get.dart';
import '../../models/_res_files.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: buildActionBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: detailBody(context),
        ),
      ),
    );
  }
}
