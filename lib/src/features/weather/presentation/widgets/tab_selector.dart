import 'package:flutter/widgets.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/shared/widgets/shrinkable_button.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({
    required this.pageIndex,
    required this.scrollController,
    super.key,
  });

  final ValueNotifier<int> pageIndex;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (text: 'Today', index: 0),
        (text: 'Tomorrow', index: 1),
        (text: '10 days', index: 2),
      ]
          .map(
            (e) => ShrinkableButton(
              onTap: () {
                pageIndex.value = e.index;
                scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                );
              },
              child: Container(
                height: 42.height,
                width: 116.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.radius),
                  color: pageIndex.value == e.index
                      ? const Color(0xFFE0B6FF)
                      : AppColors.kcWhiteColor,
                ),
                child: Center(
                  child: Text(
                    e.text,
                    style: context.textTheme.displayLarge?.copyWith(
                      fontSize: 16.fontSize,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
