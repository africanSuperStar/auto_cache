import 'package:freezed_annotation/freezed_annotation.dart';

part 'expiry_failure.freezed.dart';

@freezed
class ExpiryFailure<T> with _$ExpiryFailure<T> {
  const factory ExpiryFailure.failedToCastType() = FailedToCastType<T>;
}
