import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_failure.freezed.dart';

@freezed
class EntryFailure<T> with _$EntryFailure<T> {
  const factory EntryFailure.invalidKey() = InvalidKey<T>;
}
