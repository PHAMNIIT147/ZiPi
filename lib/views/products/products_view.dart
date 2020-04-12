import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import 'package:zipi/datamodels/season_details_models.dart';
import 'package:zipi/viewmodels/product_view_model.dart';
import 'package:zipi/widgets/product_list/products_list.dart';
import 'package:zipi/widgets/season_details/season_detail.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<ProductViewModel>.withConsumer(
      viewModel: ProductViewModel(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 100,),
            SeasonDetails(
              details: SeasonDetailsModel(
                  title: 'Lorem ipsum', description: 'Lorem ipsum best solution for devices smart IoT'),
            ),
            SizedBox(height: 50,),
            model.products == null
                ? CircularProgressIndicator()
                : ProductsList(products: model.products),
          ],
        ),
      ),
    );
  }
}
