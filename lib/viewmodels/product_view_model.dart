import 'package:flutter/material.dart';
import 'package:zipi/datamodels/product_item_models.dart';

class ProductViewModel extends ChangeNotifier {
  final products =[
    ProductItemModel(
      title: 'Smart city',
      duration: 11.4,
      imageURL: 'assets/images/smart_city.png'
    ),
    ProductItemModel(
      title: 'Smart hospital',
      duration: 11.4,
      imageURL: 'assets/images/smart_hospital.png'
    ),
    ProductItemModel(
      title: 'Smart home',
      duration: 11.4,
      imageURL: 'assets/images/smart_home.png'
    )
  ];

}