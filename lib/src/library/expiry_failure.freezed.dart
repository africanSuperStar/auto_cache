// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expiry_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpiryFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedToCastType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failedToCastType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedToCastType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedToCastType<T> value) failedToCastType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailedToCastType<T> value)? failedToCastType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedToCastType<T> value)? failedToCastType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpiryFailureCopyWith<T, $Res> {
  factory $ExpiryFailureCopyWith(
          ExpiryFailure<T> value, $Res Function(ExpiryFailure<T>) then) =
      _$ExpiryFailureCopyWithImpl<T, $Res, ExpiryFailure<T>>;
}

/// @nodoc
class _$ExpiryFailureCopyWithImpl<T, $Res, $Val extends ExpiryFailure<T>>
    implements $ExpiryFailureCopyWith<T, $Res> {
  _$ExpiryFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailedToCastTypeCopyWith<T, $Res> {
  factory _$$FailedToCastTypeCopyWith(_$FailedToCastType<T> value,
          $Res Function(_$FailedToCastType<T>) then) =
      __$$FailedToCastTypeCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FailedToCastTypeCopyWithImpl<T, $Res>
    extends _$ExpiryFailureCopyWithImpl<T, $Res, _$FailedToCastType<T>>
    implements _$$FailedToCastTypeCopyWith<T, $Res> {
  __$$FailedToCastTypeCopyWithImpl(
      _$FailedToCastType<T> _value, $Res Function(_$FailedToCastType<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToCastType<T> implements FailedToCastType<T> {
  const _$FailedToCastType();

  @override
  String toString() {
    return 'ExpiryFailure<$T>.failedToCastType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToCastType<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedToCastType,
  }) {
    return failedToCastType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failedToCastType,
  }) {
    return failedToCastType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedToCastType,
    required TResult orElse(),
  }) {
    if (failedToCastType != null) {
      return failedToCastType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedToCastType<T> value) failedToCastType,
  }) {
    return failedToCastType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailedToCastType<T> value)? failedToCastType,
  }) {
    return failedToCastType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedToCastType<T> value)? failedToCastType,
    required TResult orElse(),
  }) {
    if (failedToCastType != null) {
      return failedToCastType(this);
    }
    return orElse();
  }
}

abstract class FailedToCastType<T> implements ExpiryFailure<T> {
  const factory FailedToCastType() = _$FailedToCastType<T>;
}
