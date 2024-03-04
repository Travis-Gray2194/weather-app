// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/enums/view_state.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/core/utils/helper.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/weather/presentation/widgets/custom_app_bar.dart';
import 'package:weather/src/features/weather/presentation/widgets/daily_forecast.dart';
import 'package:weather/src/features/weather/presentation/widgets/tab_selector.dart';
import 'package:weather/src/shared/snackbar_extension.dart';
import 'package:weather/src/shared/widgets/shimmer_loader.dart';

class WeatherPage extends HookWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final showingFlexibleAppBar = useState(true);
    final pageIndex = useState(0);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels > 0 &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          showingFlexibleAppBar.value = false;
        } else {
          showingFlexibleAppBar.value = true;
        }
      },
    );
    return BlocBuilder<WeatherBloc, WeatherState>(
      buildWhen: (previous, current) {
        if (previous.viewState.isProcessing && current.viewState.isError) {
          context.showSnackBar(
            message: current.errorMessage ?? 'Something went wrong',
            type: SnackBarType.error,
          );
        }
        return true;
      },
      builder: (context, state) {
        return Scaffold(
          body: ShimmerLoader(
            isLoading: state.viewState.isProcessing,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                CustomSliverAppBar(
                  isShowingFlexible: showingFlexibleAppBar.value,
                  pageIndex: pageIndex,
                  scrollController: scrollController,
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.width,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      [
                        AppSpacing.setVerticalSpace(18),
                        TabSelector(
                          pageIndex: pageIndex,
                          scrollController: scrollController,
                        ),
                        AppSpacing.verticalSpaceMedium,
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          child: pageIndex.value != 2
                              ? DailyForecast(
                                  isToday: pageIndex.value == 0,
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
                if (pageIndex.value == 2)
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.width,
                    ),
                    sliver: SliverAnimatedList(
                      initialItemCount: state.weather?.daily?.time?.length ?? 0,
                      itemBuilder: (_, index, animation) {
                        final weatherCondition = getWeatherCondition(
                          temperature: state
                              .weather!.daily!.temperature2MMax![index]
                              .toDouble(),
                          rain:
                              state.weather!.daily!.rainSum![index].toDouble(),
                        );
                        return SizeTransition(
                          sizeFactor: animation,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 18.height),
                            padding: EdgeInsets.symmetric(
                              vertical: 15.height,
                              horizontal: 18.width,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.radius),
                              color: const Color(0xFFEBDEFF),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat('MMMM dd, yyyy').format(
                                          state.weather!.daily!.time![index],
                                        ),
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                          fontSize: 16.fontSize,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      AppSpacing.setVerticalSpace(3),
                                      Text(
                                        weatherCondition.text,
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                          fontSize: 16.fontSize,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${state.weather?.daily?.temperature2MMax?[index] ?? 0}°',
                                      style: context.textTheme.displayLarge
                                          ?.copyWith(
                                        fontSize: 16.fontSize,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    AppSpacing.setVerticalSpace(3),
                                    Text(
                                      '${state.weather?.daily?.temperature2MMin?[index] ?? 0}°',
                                      style: context.textTheme.displayLarge
                                          ?.copyWith(
                                        fontSize: 16.fontSize,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpacing.setHorizontalSpace(10),
                                Container(
                                  height: 51.height,
                                  width: 1.width,
                                  color: AppColors.kcBlackColor.withOpacity(.5),
                                ),
                                AppSpacing.setHorizontalSpace(12),
                                weatherCondition.icon.svg(width: 54.radius),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
