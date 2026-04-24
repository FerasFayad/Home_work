import 'package:flutter/material.dart';
import 'package:session5_flutter_project/core/themes/colors.dart';
import 'package:session5_flutter_project/core/themes/font_weight_helper.dart';

class TextStyles {
  static const TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16,
    color: ColorsManager.appMainWhite,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16,
    color: ColorsManager.appMainWhite,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16VioletMedium = TextStyle(
    fontSize: 16,
    color: ColorsManager.primaryViolet,
    fontWeight: FontWeightHelper.medium,
  );

  static const TextStyle font24WhiteMedium = TextStyle(
      fontSize: 24,
      color: ColorsManager.appMainWhite,
      fontWeight: FontWeightHelper.medium);

  static const TextStyle font18burbleMedium = TextStyle(
      fontSize: 18,
      color: ColorsManager.casperViolet,
      fontWeight: FontWeightHelper.medium);

  static const TextStyle font12WhiteRegular = TextStyle(
      fontSize: 12,
      color: ColorsManager.appMainWhite,
      fontWeight: FontWeightHelper.regular);
}
