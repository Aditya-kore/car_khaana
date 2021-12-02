import 'package:flutter/material.dart';

class addButton extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: FloatingActionButton(
        backgroundColor: Colors.teal.shade400,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  title: Text('Post Ad',style: TextStyle(fontWeight: FontWeight.bold),),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              icon: Icon(Icons.account_box),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Phone',
                              icon: Icon(Icons.phone),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Car Brand',
                              icon: Icon(Icons.car_rental ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Car Description',
                              icon: Icon(Icons.message ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Address',
                              icon: Icon(Icons.apartment ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Row(
                              children: [
                                Icon(Icons.add_a_photo ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                                  child: ElevatedButton(onPressed: (){}, child: Text("Add Image")),
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                    actions: [
                    TextButton(
                        child: Text("Submit"),
                        onPressed: () {
                          // your code
                        })
                  ],
                );
              });
            },
          ),
    );
  }
}
