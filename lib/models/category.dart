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
      name: "Volkswagen Polo",
      desc: "Volkswagen Polo Petrol Manual Top End",
      price: 8,
      color: "red",
      image: "assets/images/polo.jpg"
    ),
    Item(
      id: 4,
      name: "Hyundai Creta",
      desc: "Hyundai Creta Diesel Top End",
      price: 9,
      color: "white",
      image: "assets/images/creta.jpg"
),
    Item(
      id: 5,
      name: "Kia Sonet",
      desc: "Kia Sonet Diesel Top End",
      price: 7,
      color: "amber",
      image: "assets/images/kia_sonet.jpg"
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