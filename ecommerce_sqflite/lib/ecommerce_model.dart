class EcommerceModel {
  int? id;
  String name;
  String description;
  String price;
  String image;
  bool isFavourite;

  EcommerceModel({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.isFavourite = false,
  });
}
