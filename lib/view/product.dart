import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genteel_store/utils/extensions.dart';
import 'package:genteel_store/widget/product_error.dart';
import 'package:genteel_store/widget/product_loading.dart';

import '../controller/product.dart';
import '../cubit/product/product_cubit.dart';
import '../model/product.dart';
import '../utils/colors.dart';
import '../utils/stateless_view.dart';
import '../utils/text_styles.dart';
import '../widget/product_item.dart';

class ProductView extends StatelessView<ProductScreen, ProductController> {
  const ProductView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightFrameColor,
      appBar: AppBar(
        // centerTitle: false,
        backgroundColor: AppColors.lightFrameColor,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Genteel Store",
          style: Styles.x28dp700w().copyWith(
              fontSize: 24.text,
              fontWeight: FontWeight.w500,
              color: AppColors.lightTextColor),
        ),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return switch (state) {
            ProductLoading _ => const ProductLoader(),
            ProductSuccess(response: List<ProductData> response) =>
              GridView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.relWidth, vertical: 16.relHeight),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.relWidth,
                  mainAxisSpacing: 12.relHeight,
                  childAspectRatio: 0.8.relWidth,
                ),
                itemBuilder: (context, index) => ProductItemWidget(
                  product: response[index],
                ),
                itemCount: response.length,
              ),
            ProductFailure(error: String error) =>
              ProductErrorWidget(error: error),
            _ => const Center(
                child: Text("Something went wrong"),
              )
          };
        },
      ),
    );
  }
}
