class ProductItemModel {
  final String title;
  final double duration;
  final String imageURL;

  ProductItemModel({this.title, this.duration, this.imageURL});

  ProductItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        duration = map['duration'],
        imageURL = map['imageURL'];
}
