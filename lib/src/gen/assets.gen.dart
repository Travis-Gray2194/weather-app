/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/.gitkeep
  String get gitkeep => 'assets/icons/.gitkeep';

  /// File path: assets/icons/clear.svg
  SvgGenImage get clear => const SvgGenImage('assets/icons/clear.svg');

  /// File path: assets/icons/cloudy.svg
  SvgGenImage get cloudy => const SvgGenImage('assets/icons/cloudy.svg');

  /// File path: assets/icons/partial_cloudy.svg
  SvgGenImage get partialCloudy =>
      const SvgGenImage('assets/icons/partial_cloudy.svg');

  /// File path: assets/icons/rainy.svg
  SvgGenImage get rainy => const SvgGenImage('assets/icons/rainy.svg');

  /// File path: assets/icons/unknown.svg
  SvgGenImage get unknown => const SvgGenImage('assets/icons/unknown.svg');

  /// List of all assets
  List<dynamic> get values =>
      [gitkeep, clear, cloudy, partialCloudy, rainy, unknown];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/.gitkeep
  String get gitkeep => 'assets/images/.gitkeep';

  /// File path: assets/images/home_bg.png
  AssetGenImage get homeBg => const AssetGenImage('assets/images/home_bg.png');

  /// File path: assets/images/launcher.png
  AssetGenImage get launcher =>
      const AssetGenImage('assets/images/launcher.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<dynamic> get values => [gitkeep, homeBg, launcher, splash];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/.gitkeep
  String get gitkeep => 'assets/svgs/.gitkeep';

  /// File path: assets/svgs/cloudy.svg
  SvgGenImage get cloudy => const SvgGenImage('assets/svgs/cloudy.svg');

  /// File path: assets/svgs/daily.svg
  SvgGenImage get daily => const SvgGenImage('assets/svgs/daily.svg');

  /// File path: assets/svgs/history.svg
  SvgGenImage get history => const SvgGenImage('assets/svgs/history.svg');

  /// File path: assets/svgs/pressure.svg
  SvgGenImage get pressure => const SvgGenImage('assets/svgs/pressure.svg');

  /// File path: assets/svgs/rain_chance.svg
  SvgGenImage get rainChance =>
      const SvgGenImage('assets/svgs/rain_chance.svg');

  /// File path: assets/svgs/sunrise.svg
  SvgGenImage get sunrise => const SvgGenImage('assets/svgs/sunrise.svg');

  /// File path: assets/svgs/sunset.svg
  SvgGenImage get sunset => const SvgGenImage('assets/svgs/sunset.svg');

  /// File path: assets/svgs/uv_index.svg
  SvgGenImage get uvIndex => const SvgGenImage('assets/svgs/uv_index.svg');

  /// File path: assets/svgs/wind.svg
  SvgGenImage get wind => const SvgGenImage('assets/svgs/wind.svg');

  /// List of all assets
  List<dynamic> get values => [
        gitkeep,
        cloudy,
        daily,
        history,
        pressure,
        rainChance,
        sunrise,
        sunset,
        uvIndex,
        wind
      ];
}

class AppAssets {
  AppAssets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
