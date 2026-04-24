import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';

class ButtonBack extends StatelessWidget {
  final VoidCallback? onTap;

  const ButtonBack({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39,
      width: 105,
      child: MaterialButton(
        color: ColorsManager.secondaryViolet,
        onPressed: onTap,
        disabledColor: ColorsManager.secondaryViolet.withOpacity(.5),
        child: const Row(
          children: [
            SizedBox(
              width: 19,
              height: 19,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Text(
              'back',
              style: TextStyles.font16WhiteMedium,
            ),
          ],
        ),
      ),
    );
  }
}
