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
    var dWidth = MediaQuery.of(context).size.width;
    var dHeight = MediaQuery.of(context).size.height;

    var dPadding = MediaQuery.of(context).padding;
    var dSafeHeight = dHeight - dPadding.top - dPadding.bottom;

    return InkWell(
      onTap: () {
        print("${item.name} is pressed");
      },
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Center(
              child: Image.asset(
                item.image,
                height: dSafeHeight * 0.7,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
              height: dSafeHeight * 0.7,
              width: dSafeHeight * 0.7,
              margin: EdgeInsets.only(top: 20, bottom: 0, left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: dSafeHeight * 0.05,
                  ),
                  Center(
                    child: Text(item.name,
                        style: TextStyle(
                            fontSize: dSafeHeight * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: dSafeHeight * 0.45, //padding for bottom text
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Text("\₹${item.price} lakhs",
                            style: TextStyle(
                                fontSize: dSafeHeight * 0.02,
                                color: Colors.white)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Icon(Icons.access_time,color: Colors.white,),
                            Text("2 days ago",
                                style: TextStyle(
                                    fontSize: dSafeHeight * 0.02,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Icon(Icons.brush,color: Colors.orange,),
                            Text("Color",
                                style: TextStyle(
                                    fontSize: dSafeHeight * 0.02,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Icon(Icons.phone,color: Colors.green,),
                            Text("8888888888",
                                style: TextStyle(
                                    fontSize: dSafeHeight * 0.02,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right:20,top:20,bottom:0),
                      child: Text(
                        item.desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: dSafeHeight * 0.025, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
