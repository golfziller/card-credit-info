import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

formatCurrentCy(double value, {String? format, String? suffix}) {
  final oCcy = NumberFormat(format ?? "#,##0.00", "en_US");
  return '${oCcy.format(value)}${suffix != null ? ' $suffix' : ''}';
}
