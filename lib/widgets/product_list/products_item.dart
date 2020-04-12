import 'package:flutter/material.dart';
import 'package:zipi/constant/app_colors.dart';
import 'package:zipi/datamodels/product_item_models.dart';

import 'package:zipi/extensions/hover_extensions.dart';

class ProductsItem extends StatelessWidget {
  final ProductItemModel model;
  const ProductsItem({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 2,
      child: SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image(
                image: AssetImage(
                  model.imageURL,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.duration} date',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ).showCursorOnHover.moveUpHover;
  }
}
