library color_field.dart;

import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/core/domain/validator/validator.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';

/// Contains power-packed methods for any InputField type.
class ColorField extends FieldObject<Color?> {
  static const ColorField DEFAULT = ColorField._(Right(Color(0xff000000)));

  @override
  final Either<FieldObjectException<String>, Color> value;

  factory ColorField(Color? input) {
    return ColorField._(Validator.isNotEmpty(input));
  }

  @override
  bool get isValid {
    if (getOrNull == null) return false;
    final hex = Palette.stringHex(getOrNull!, withAlpha: false, appendHash: true);
    return RegExp(r'^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(hex);
  }

  const ColorField._(this.value);

  @override
  ColorField copyWith(Color? newValue) => ColorField(newValue);
}
