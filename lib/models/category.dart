// @dart=2.9
class CatalogModel{
  final items = [
    Item(
      id: 1,
      name: "Tata Safari",
      desc: "Tata Safari Diesel Top End",
      price: 12,
      color: "green",
      image: "assets/images/tata_safari.jpg"
    ),
    Item(
      id: 2,
      name: "Porsche",
      desc: "Porsche Petrol Automatic Top End",
      price: 89,
      color: "red",
      image: "assets/images/porsche.jpg"
    ),
    Item(
      id: 3,
      name: "Ferrari SF90",
      desc: "Ferrari SF90 Petrol Automatic Top End Sports+",
      price: 120,
      color: "red",
      image: "assets/images/ferrari.jpg"
    ),
    Item(
      id: 4,
      name: "Hyundai i30N",
      desc: "Hyundai i30N Diesel Top End",
      price: 18,
      color: "blue",
      image: "assets/images/hyundai.jpg"
    ),
    Item(
      id: 5,
      name: "Skoda Octavia",
      desc: "Skoda Octavia Diesel Top End",
      price: 14,
      color: "teal",
      image: "assets/images/skoda.jpg"
    ),
    Item(
      id: 6,
      name: "Audi RS5",
      desc: "Audi RS5 Diesel Top End",
      price: 40,
      color: "green",
      image: "assets/images/audi.jpg"
    ),
    Item(
      id: 7,
      name: "Toyota Land Cruiser",
      desc: "Toyota Land Cruiser Top End Diesel",
      price: 55,
      color: "white",
      image: "assets/images/toyota.jpg"
    ),
    Item(
      id: 8,
      name: "BMW 5 Series",
      desc: "BMW 5 Series Petrol Top End",
      price: 60,
      color: "grey",
      image: "assets/images/bmw.jpg"
    ),
    Item(
      id: 9,
      name: "Lamborghini Urus",
      desc: "Lamborghini Urus Petrol Top End",
      price: 110,
      color: "amber",
      image: "assets/images/lamborghini.jpg"
    ),
    Item(
      id: 10,
      name: "Landrover Defender",
      desc: "Landrover Defender Diesel Top End",
      price: 80,
      color: "green",
      image: "assets/images/landrover.jpg"
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  
  Item({this.id,this.name,this.desc,this.price,this.color,this.image});
  }