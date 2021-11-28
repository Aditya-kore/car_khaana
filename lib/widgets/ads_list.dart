// @dart=2.9
import 'package:car_khaana/models/category.dart';
import 'package:car_khaana/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class adsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:50,right:50,top:10,bottom:10),
        child: ListView.builder(
          itemCount: CatalogModel().items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel().items[index],
            );
          },
        ),
      ),
    );
  }
}
