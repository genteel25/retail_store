import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genteel_store/utils/colors.dart';
import 'package:genteel_store/utils/text_styles.dart';

class ProductErrorWidget extends StatelessWidget {
  const ProductErrorWidget({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 180),
          SizedBox(
            height: 150,
            width: 150,
            child: SvgPicture.asset("assets/vectors/product_error.svg"),
          ),
          SizedBox(height: 8),
          Text(
            "An error has occured",
            style: Styles.x28dp700w().copyWith(
                fontSize: 16,
                color: AppColors.lightTextColor,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              error,
              style: Styles.x28dp700w().copyWith(
                  fontSize: 14,
                  color: AppColors.lightSubTextColor,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
