import 'package:auto_cache/src/library/expiry.dart';

/// Helper class to hold cached instance and expiry date.
/// Used in memory storage to work with Cache.
class MemoryCapsule extends Object {
  /// Object to be cached
  final dynamic object;

  /// Expiration date
  final Expiry expiry;

  /// Creates a new instance of Capsule.
  /// - Parameter value: Object to be cached
  /// - Parameter expiry: Expiration date
  MemoryCapsule({required this.object, required this.expiry});
}
