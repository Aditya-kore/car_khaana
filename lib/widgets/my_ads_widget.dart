// @dart=2.9
import 'package:car_khaana/models/category.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class AdsWidget extends StatelessWidget {
  final Item item;

  const AdsWidget({Key key, @required this.item}):assert(item != null),
  super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Icon(Icons.check),
      ),
    );
  }
}