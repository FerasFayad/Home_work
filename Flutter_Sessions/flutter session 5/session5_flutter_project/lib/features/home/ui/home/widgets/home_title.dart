import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Good morning',
          style: TextStyles.font16WhiteRegular,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'New topic is waiting',
          style: TextStyles.font24WhiteMedium,
        )
      ],
    );
  }
}
