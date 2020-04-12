import 'package:flutter/material.dart';
import 'package:zipi/datamodels/product_item_models.dart';

class ProductViewModel extends ChangeNotifier {
  final products =[
    ProductItemModel(
      title: 'Smart city',
      duration: 11.4,
      imageURL: 'assets/images/smart_city.jpg'
    ),
    ProductItemModel(
      title: 'Smart hospital',
      duration: 11.4,
      imageURL: 'assets/images/smart_hospital.png'
    ),
    ProductItemModel(
      title: 'Smart home',
      duration: 11.4,
      imageURL: 'assets/images/smart_home.jpg'
    ),
    ProductItemModel(
      title: 'Smart airport',
      duration: 12.4,
      imageURL: 'assets/images/smart_airport.jpg'
    ),
  ];

}