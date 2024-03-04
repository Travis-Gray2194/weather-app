// ignore_for_file: use_build_context_synchronously, lines_longer_than_80_chars

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/core/utils/helper.dart';
import 'package:weather/src/di/locator.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/weather/presentation/widgets/tab_selector.dart';
import 'package:weather/src/gen/assets.gen.dart';
import 'package:weather/src/services/location_service.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    required this.isShowingFlexible,
    required this.pageIndex,
    required this.scrollController,
    super.key,
  });

  final bool isShowingFlexible;
  final ValueNotifier<int> pageIndex;
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 412.radius,
      systemOverlayStyle: isShowingFlexible
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      backgroundColor:
          isShowingFlexible ? Colors.transparent : const Color(0xFFE2D3FA),
      floating: true,
      pinned: true,
      bottom: isShowingFlexible
          ? null
          : _CustomAppBar(
              pageIndex: pageIndex,
              scrollController: scrollController,
            ),
      centerTitle: false,
      leadingWidth: 0.1,
      flexibleSpace: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final isToday = pageIndex.value != 1;
          final currentDate = isToday
              ? DateTime.now()
              : DateTime.now().add(const Duration(days: 1));
          final currentTemp =
              '${isToday ? state.weather?.current?.temperature2M?.toString() ?? '' : state.weather?.daily?.temperature2MMax?[4]}'
              ' ${state.weather?.currentUnits?.temperature2M?.toString() ?? ''} ';

          final todayHours = state.weather?.hourly?.time?.where(
              (element) {
                return element.contains(
                  DateTime.utc(currentDate.year, currentDate.month, currentDate.day)
                      .toIso8601String()
                      .replaceAll('T00:00:00.000Z', ''),
                );
              },
            ).toList() ??
            [];

        final hourlyLastIndex =
            state.weather?.hourly?.time?.indexOf(todayHours.lastOrNull ?? '') ??
                0;
          final nightTemp =
              '${state.weather?.hourly?.temperature2M?[hourlyLastIndex].toString() ?? ''}'
              ' ${state.weather?.currentUnits?.temperature2M?.toString() ?? ''} ';

          final weatherCondition = getWeatherCondition(
            temperature: state
                    .weather?.daily?.temperature2MMax?[isToday ? 3 : 4]
                    .toDouble() ??
                0,
            rain:
                state.weather?.daily?.rainSum?[isToday ? 3 : 4].toDouble() ?? 0,
          );
          return FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(26.radius),
                ),
                color: const Color(0xFFC9BEBE),
                image: DecorationImage(
                  image: AssetImage(
                    AppAssets.images.homeBg.path,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: 16.height,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const AppBarTitle(),
                  AppSpacing.setVerticalSpace(40),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 55.height,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              currentTemp,
                              style: context.textTheme.displayLarge?.copyWith(
                                fontSize: 70.fontSize,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kcWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            weatherCondition.icon.svg(
                              width: 107.width,
                            ),
                            AppSpacing.setVerticalSpace(14),
                            Text(
                              weatherCondition.text,
                              style: context.textTheme.displayLarge?.copyWith(
                                fontSize: 22.fontSize,
                                color: AppColors.kcWhiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.setVerticalSpace(87),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          DateFormat().format(currentDate),
                          style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 18.fontSize,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kcWhiteColor,
                          ),
                        ),
                      ),
                      AppSpacing.verticalSpaceMassive,
                      Text(
                        'Day $currentTemp\nNight $nightTemp°',
                        style: context.textTheme.displayLarge?.copyWith(
                          fontSize: 18.fontSize,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kcWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AppBarTitle extends HookWidget {
  const AppBarTitle({
    super.key,
    this.isFlexible = true,
  });

  final bool isFlexible;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) => Row(
        children: [
          Text(
            state.address ?? '',
            style: context.theme.appBarTheme.titleTextStyle?.copyWith(
              color:
                  isFlexible ? AppColors.kcWhiteColor : AppColors.kcBlackColor,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () async {
              final currentLocation =
                  await locator<LocationService>().getLocation();
              await Navigator.of(context).push(
                CupertinoPageRoute<dynamic>(
                  builder: (ctx) => Material(
                    child: OpenStreetMapSearchAndPick(
                      locationPinIconColor: const Color(0xFFD0BCFF),
                      onGetCurrentLocationPressed: () => Future.value(
                        LatLng(
                          currentLocation.latitude,
                          currentLocation.longitude,
                        ),
                      ),
                      buttonTextStyle: const TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                      ),
                      buttonColor: const Color(0xFFD0BCFF),
                      buttonText: 'Select Location',
                      onPicked: (pickedData) {
                        context.read<WeatherBloc>().add(
                              WeatherEvent.locationPicked(pickedData),
                            );
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              );
            },
            child: Icon(
              Icons.search,
              size: 36.radius,
              color:
                  isFlexible ? AppColors.kcWhiteColor : AppColors.kcBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    required this.pageIndex,
    required this.scrollController,
  });
  final ValueNotifier<int> pageIndex;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final isToday = pageIndex.value != 1;

        final currentTemp =
            '${isToday ? state.weather?.current?.temperature2M?.toString() ?? '' : state.weather?.daily?.temperature2MMax?[4]}'
            ' ${state.weather?.currentUnits?.temperature2M?.toString() ?? ''} ';

        final weatherCondition = getWeatherCondition(
          temperature: state.weather?.daily?.temperature2MMax?[isToday ? 3 : 4]
                  .toDouble() ??
              0,
          rain: state.weather?.daily?.rainSum?[isToday ? 3 : 4].toDouble() ?? 0,
        );
        return Container(
          color: const Color(0xFFE2D3FA),
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.horizontalSpacing,
            vertical: 16.height,
          ),
          child: Column(
            children: [
              const AppBarTitle(
                isFlexible: false,
              ),
              AppSpacing.setVerticalSpace(12),
              Row(
                children: [
                  Text(
                    currentTemp,
                    style: context.textTheme.displayLarge?.copyWith(
                      fontSize: 57.fontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kcBlackColor,
                    ),
                  ),
                  const Spacer(),
                  weatherCondition.icon.svg(
                    width: 59.width,
                  ),
                ],
              ),
              AppSpacing.setVerticalSpace(17),
              TabSelector(
                pageIndex: pageIndex,
                scrollController: scrollController,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(228.height);
}
