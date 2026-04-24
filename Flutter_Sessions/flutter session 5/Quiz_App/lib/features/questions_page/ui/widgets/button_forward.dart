import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';

class ButtonForward extends StatelessWidget {
  final VoidCallback? onTap;

  const ButtonForward({
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
            Text(
              'next',
              style: TextStyles.font16WhiteMedium,
            ),
            SizedBox(width: 8),
            SizedBox(
              width: 19,
              height: 19,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
