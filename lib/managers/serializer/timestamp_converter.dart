import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

String? serializeDateTime(DateTime? dateTime) => dateTime?.toIso8601String();
DateTime? deserializeDateTime(String value) => DateTime.tryParse(value);

class TimestampConverter implements JsonConverter<DateTime?, dynamic> {
  const TimestampConverter();

  @override
  DateTime? fromJson(dynamic value) {
    if (value is Timestamp) {
      return value.toDate().toLocal();
    } else if (value is String) {
      return deserializeDateTime(value)?.toLocal();
    } else {
      return null;
    }
  }

  @override
  dynamic toJson(DateTime? instance) => instance != null ? Timestamp.fromDate(instance) : null;
}
