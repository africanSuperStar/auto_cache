import 'package:auto_cache/src/library/expiry_failure.dart';
import 'package:auto_cache/src/library/option.dart';

/// Helper class to set the expiration date
class Expiry {
  Expiry._({required dynamic value});

  factory Expiry.from(dynamic value) {
    return Expiry._(value: value);
  }

  late final dynamic _value;

  /// Object will be expired in the nearest future
  Option<ExpiryFailure, DateTime> get never {
    return Option.success(
      value: DateTime.fromMillisecondsSinceEpoch(60 * 60 * 24 * 365 * 68),
    );
  }

  /// Object will be expired in the specified amount of seconds
  Option<ExpiryFailure, DateTime> get seconds {
    try {
      return Option.success(
        value: DateTime.now().add(
          Duration(seconds: _value),
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
      return Option.success(value: _value);
    } catch (e) {
      return Option.failure(
        failure: const ExpiryFailure.failedToCastType(),
        fallback: never.value,
      );
    }
  }
}
