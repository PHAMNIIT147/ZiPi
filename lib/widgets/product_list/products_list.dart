import 'package:flutter/material.dart';
import 'package:zipi/datamodels/product_item_models.dart';
import 'package:zipi/widgets/product_list/products_item.dart';

class ProductsList extends StatelessWidget {
  final List<ProductItemModel> products;
  ProductsList({@required this.products});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: [
        ...products.map((product) => ProductsItem(model: product)),
      ],
    );
  }
}
