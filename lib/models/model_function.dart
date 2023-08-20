import 'package:cloud_firestore/cloud_firestore.dart';

// Timestamp? timestampFromDateTime(DateTime? dateTime) {
//   return (dateTime != null) ? Timestamp.fromDate(dateTime) : null;
// }
//
// DateTime? dateTimeFromTimestamp(Timestamp? timestamp) {
//   return (timestamp != null)
//       ? DateTime.parse(timestamp.toDate().toIso8601String())
//       : null;
// }

class ConvertDateTime {
  static Timestamp? timestampFromDateTime(DateTime? dateTime) {
    return (dateTime != null) ? Timestamp.fromDate(dateTime) : null;
  }

  static DateTime? dateTimeFromTimestamp(Timestamp? timestamp) {
    return (timestamp != null)
        ? DateTime.parse(timestamp.toDate().toIso8601String())
        : null;
  }
}
