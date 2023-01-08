import 'package:auto_cache/src/library/expiry.dart';

/// A wrapper around cached object and its expiry date.
class Entry<T> {
  /// Cached object
  final T object;

  /// Expiry date
  final Expiry expiry;

  /// File path to the cached object
  final String? filePath;

  const Entry(
    this.object, {
    required this.expiry,
    required this.filePath,
  });
}
