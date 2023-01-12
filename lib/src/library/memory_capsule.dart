import 'package:auto_cache/src/library/expiry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_capsule.freezed.dart';
part 'memory_capsule.g.dart';

/// Helper class to hold cached instance and expiry date.
/// Used in memory storage to work with Cache.
@freezed
class MemoryCapsule<T> extends Object with _$MemoryCapsule<T> {
  /// Creates a new instance of Capsule.
  /// - Parameter value: Object to be cached
  /// - Parameter expiry: Expiration date
  const factory MemoryCapsule({
    /// Object to be cached
    dynamic object,

    /// Expiration date
    Expiry? expiry,
  }) = _MemoryCapsule;

  factory MemoryCapsule.fromJson(Map<String, Object?> json) =>
      _$MemoryCapsuleFromJson(json);
}
