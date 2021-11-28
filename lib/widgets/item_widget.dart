// @dart=2.9
import 'package:car_khaana/models/category.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("${item.name} is pressed");
      },
      child: Stack(children: [
        Container(
            height: 580,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 420,
                ),
                Center(
                  child: Text(item.name,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("\₹${item.price} lakhs",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 215),
                      child: Row(
                        children: [
                          Icon(Icons.access_time),
                          Text("2 days ago",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.brush),
                          Text("Color",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 225),
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          Text("8888888888",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      ),
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(item.desc, style: TextStyle(fontSize: 18,),),
                  ),
                ),              
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Center(
              child: Image.asset(
                item.image,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
