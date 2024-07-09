import 'package:cached_network_image/cached_network_image.dart';
import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:genteel_store/utils/extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../model/product.dart';
import '../utils/colors.dart';
import '../utils/global_variable.dart';
import '../utils/string_constants.dart';
import '../utils/text_styles.dart';

class ProductItemWidget extends StatelessWidget {
  ProductItemWidget({super.key, required this.product});
  final ProductData product;

  final MenuController _menuController = MenuController();

  onClick() {
    if (_menuController.isOpen) {
      return _menuController.close();
    }
    return _menuController.open();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157.relWidth,
      padding: EdgeInsets.only(top: 12.relHeight),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.lightBgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   width: 140.relWidth,
          //   child: CachedNetworkImage(
          //     imageUrl: "${StringConstants.baseUrl}images/${product.image}",
          //     fit: BoxFit.cover,
          //     errorWidget: (context, error, stackTrace) =>
          //         Container(width: 200.relWidth),
          //   ),
          // ),
          // Expanded(
          //     child: Align(
          //   alignment: Alignment.centerLeft,
          //   child: Padding(
          //     padding: EdgeInsets.only(left: 12.relWidth),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisSize: MainAxisSize.max,
          //       children: [
          //         Text(
          //           "BEST SELLER",
          //           style: Styles.x28dp700w().copyWith(
          //             fontSize: 12.text,
          //             fontWeight: FontWeight.w400,
          //             color: AppColors.primaryColor,
          //           ),
          //         ),
          //         SizedBox(height: 4.relHeight),
          //         FittedBox(
          //           child: Text(
          //             product.name,
          //             style: Styles.x28dp700w().copyWith(
          //               fontSize: 16.text,
          //               fontWeight: FontWeight.w500,
          //               color: AppColors.lightTextColor,
          //             ),
          //           ),
          //         ),
          //         const Spacer(),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               // product.price.toString(),
          //               CurrencyFormatter.format(
          //                   product.price.toString(), currencySettings),
          //               style: Styles.x28dp700w().copyWith(
          //                 fontSize: 14.text,
          //                 fontWeight: FontWeight.w500,
          //                 color: AppColors.lightTextColor,
          //               ),
          //             ),
          //             Skeleton.leaf(
          //               child: Container(
          //                 padding: const EdgeInsets.all(11.5),
          //                 decoration: const BoxDecoration(
          //                     color: AppColors.primaryColor,
          //                     borderRadius: BorderRadius.only(
          //                       topLeft: Radius.circular(16),
          //                     )),
          //                 child: const Icon(
          //                   Icons.add,
          //                   color: AppColors.lightBgColor,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // )),
          MenuAnchor(
            style: MenuStyle(
                maximumSize: WidgetStatePropertyAll(Size(200, 100)),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 10)),
                alignment: Alignment.bottomLeft),
            controller: _menuController,
            menuChildren: [
              Text("first Anchor child"),
              Text("second Anchor child"),
              Text("thired Anchor child"),
              Text("fourth Anchor child"),
              Text("fourth Anchor child"),
              Text("fourth Anchor child"),
              Text("fourth Anchor child"),
              Text("fourth Anchor child"),
            ],
            child: GestureDetector(
              onTap: () => onClick(),
              child: Text("Menu Achor"),
            ),
          ),
        ],
      ),
    );
  }
}
