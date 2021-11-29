// @dart=2.9
import 'package:car_khaana/models/category.dart';
import 'package:car_khaana/widgets/my_ads_widget.dart';
import 'package:flutter/material.dart';

class MyAdsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:50,right:50,top:10,bottom:10),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return AdsWidget(
              item: CatalogModel().items[index],
            );
          },
        ),
      ),
    );
  }
}