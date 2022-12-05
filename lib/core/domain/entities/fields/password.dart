import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/field_object/field_object_exception.dart';
import 'package:dextercare/core/domain/validator/validator.dart';

class Password extends FieldObject<String?> {
  static const Password DEFAULT = Password._(Right(''));
  static const String kPlaceholder = 'secret';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory Password(String? password, {ValidatorFunction<String?>? validator, FieldValidation? mode}) =>
      Password._(Validator.passwordValidator(password, mode: mode).flatMap(validator ?? (a) => right(a)));

  const Password._(this.value);

  bool get isEmpty => value.fold((_) => true, (r) => r!.isEmpty);

  @override
  Password copyWith([String? newValue, ValidatorFunction<String?>? validator, FieldValidation? mode]) =>
      Password(newValue, validator: validator, mode: mode);
}
