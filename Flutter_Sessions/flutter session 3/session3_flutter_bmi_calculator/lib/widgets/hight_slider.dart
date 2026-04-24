import 'package:flutter/material.dart';
import '../themeing/colors.dart';
import '../themeing/text_styles.dart';
import 'coustm_app_theme_card.dart';

class HightSlider extends StatelessWidget {
  final ValueNotifier<int> heightNotifier;

  const HightSlider({
    super.key,
    required this.heightNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<int>(
        valueListenable: heightNotifier,
        builder: (context, height, child) {
          return CoustmAppThemeCard(
            color: MyColors.inactiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyles.costomAppLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$height',
                      style: TextStyles.costomAppNumberTextStyle,
                    ),
                    const Text(
                      'cm',
                      style: TextStyles.costomAppLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    thumbColor: MyColors.bottomContainerColor,
                    overlayColor: MyColors.bottomContainerColor.withAlpha(0x29),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 30.0,
                    ),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (val) {
                      heightNotifier.value = val.round();
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
