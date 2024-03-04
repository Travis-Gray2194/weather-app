import 'package:flutter/material.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/gen/assets.gen.dart';

class ChanceOfRainCard extends StatelessWidget {
  const ChanceOfRainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.radius),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18.radius,
        ),
        color: const Color(0xFFD0BCFF).withOpacity(.3),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.kcWhiteColor,
                radius: 18.radius,
                child: AppAssets.svgs.rainChance.svg(
                  width: 20.radius,
                ),
              ),
              AppSpacing.horizontalSpaceSmall,
              Text(
                'Chance of rain',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          AppSpacing.setVerticalSpace(18),
          ...List.generate(
            4,
            (index) => Padding(
              padding: index == 3
                  ? EdgeInsets.zero
                  : EdgeInsets.only(bottom: 11.height),
              child: Row(
                children: [
                  Text(
                    '${index + 7} PM',
                    style: context.textTheme.displayLarge?.copyWith(
                      fontSize: 15.fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppSpacing.setHorizontalSpace(33),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: (index + 1) / 4,
                      borderRadius: BorderRadius.circular(100.radius),
                    ),
                  ),
                  AppSpacing.setHorizontalSpace(22),
                  Text(
                    '${(((index + 1) / 4) * 100).toInt()}%',
                    style: context.textTheme.displayLarge?.copyWith(
                      fontSize: 15.fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
