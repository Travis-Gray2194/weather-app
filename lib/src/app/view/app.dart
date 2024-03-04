import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/src/core/themes/app_theme.dart';
import 'package:weather/src/di/locator.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/weather/presentation/pages/weather_page.dart';
import 'package:weather/src/l10n/l10n.dart';
import 'package:weather/src/shared/widgets/dismiss_keyboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: MultiBlocProvider(
        providers: [
           BlocProvider(
            create: (_) => WeatherBloc(
              locator(),
              locator(),
              locator(),
            )..add(
                const WeatherEvent.started(),
              ),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(412, 892),
          builder: (context, _) => MaterialApp(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const WeatherPage(),
          ),
        ),
      ),
    );
  }
}
