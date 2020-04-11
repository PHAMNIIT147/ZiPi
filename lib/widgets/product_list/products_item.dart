import 'package:flutter/material.dart';
import 'package:zipi/datamodels/product_item_models.dart';

class ProductsItem extends StatelessWidget {
  final ProductItemModel model;
  const ProductsItem({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Image(
                      image: AssetImage(model.imageURL),
                    ),
                  ),
                  Text(
                    model.title,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    softWrap: true,
                  ),
                  Text(
                    '${model.duration} date',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
