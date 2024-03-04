import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

extension ResponsiveExtension on num {
  double get width => w;

  double get height => h;

  double get fontSize => sp;

  double get radius => r;
}

extension NumExtension on num {
  String get dayOfMonthSuffix {
    if (!(this >= 1 && this <= 31)) {
      throw Exception('Invalid day of month');
    }

    if (this >= 11 && this <= 13) {
      return 'th';
    }

    switch (this % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  String get toAmount => NumberFormat.currency(symbol: '').format(this);
}
