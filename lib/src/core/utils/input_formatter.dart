// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    } else {
      // Remove all characters & alphabet
      final onlyNumber = newValue.text.replaceAll(RegExp('[^0-9]'), '');

      // Return the formatted value as the new text value and position
      return TextEditingValue(
        text: onlyNumber,
        selection: TextSelection.collapsed(offset: onlyNumber.length),
      );
    }
  }
}

class FormatCardNumber extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty || newValue.text.length < oldValue.text.length) {
      return newValue;
    } else {
      // Remove all non-digit characters
      final onlyNumber = newValue.text.replaceAll(RegExp('[^0-9]'), '');

      final stringList = <String>[];
      const divisionIndex = 4;

      for (var i = 0; i < onlyNumber.length; i += divisionIndex) {
        final tempString = onlyNumber.substring(
          i,
          i + divisionIndex < onlyNumber.length
              ? i + divisionIndex
              : onlyNumber.length,
        );
        stringList.add(tempString);
      }

      // Return the formatted value as the new text value and position
      return TextEditingValue(
        text: stringList.join(' '),
        selection: TextSelection.collapsed(offset: stringList.join(' ').length),
      );
    }
  }
}

class AmountTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty || newValue.text.length < oldValue.text.length) {
      return newValue;
    }
    if (newValue.text.length == 1 && newValue.text == '.') {
      return const TextEditingValue(
        text: '0.',
        selection: TextSelection.collapsed(offset: 2),
      );
    }
    if (newValue.text.split('.').length > 2) {
      return oldValue;
    } else {
      // Determine if the value is a decimal by looking for a decimal separator
      final isDecimal = newValue.text.contains('.');

      // Remove all characters and letters
      final unformattedValue = newValue.text.replaceAll(RegExp('[^0-9.]'), '');

      // Use Flutter's built-in number formatting to add commas to the value
      final formatter =
          isDecimal ? NumberFormat('#,###.####') : NumberFormat('#,###');

      final wholeNumber = unformattedValue.split('.').first;
      final decimalNumber = unformattedValue.split('.').last;

      final amount = double.tryParse(wholeNumber);
      if (amount == null) {
        // Return an empty strings as the value is not a valid number
        return const TextEditingValue(
          selection: TextSelection.collapsed(offset: 0),
        );
      }

      final formattedValue = formatter.format(amount);

      final value =
          '$formattedValue${isDecimal ? '.${decimalNumber.split('').take(2).join()}' : ''}';
      // Return the formatted value as the new text value and position
      return TextEditingValue(
        text: value,
        selection: TextSelection.collapsed(offset: value.length),
      );
    }
  }
}

class DateTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty || newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    var value = newValue.text.replaceAll(RegExp('[^0-9/]'), '');

    if (value.length == 2) {
      value = '$value/';
    }

    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: value.length),
    );
  }
}
