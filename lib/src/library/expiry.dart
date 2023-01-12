import 'package:auto_cache/src/library/expiry_failure.dart';
import 'package:auto_cache/src/library/option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expiry.freezed.dart';
part 'expiry.g.dart';

/// Helper class to set the expiration date
@freezed
class Expiry<T> with _$Expiry<T> {
  Expiry._();

  factory Expiry.from(dynamic value) = _FromValue;

  factory Expiry.fromJson(Map<String, Object?> json) => _$ExpiryFromJson(json);

  /// Object will be expired in the nearest future
  static Option<ExpiryFailure, DateTime> get never {
    return Option.success(
      value: DateTime.fromMillisecondsSinceEpoch(60 * 60 * 24 * 365 * 68),
    );
  }

  /// Object will be expired in the specified amount of seconds
  Option<ExpiryFailure, DateTime> get seconds {
    try {
      return Option.success(
        value: DateTime.now().add(
          Duration(seconds: value),
        ),
      );
    } catch (e) {
      return Option.failure(
        failure: const ExpiryFailure.failedToCastType(),
        fallback: never.value,
      );
    }
  }

  /// Object will be expired on the specified date
  Option<ExpiryFailure, DateTime> get dateTime {
    try {
      return Option.success(value: value);
    } catch (e) {
      return Option.failure(
        failure: const ExpiryFailure.failedToCastType(),
        fallback: never.value,
      );
    }
  }

  /// Checks if cached object is expired according to expiration date
  bool get isExpired {
    return DateTime.now().isBefore(value);
  }
}
