// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidKey<T> value) invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidKey<T> value)? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidKey<T> value)? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryFailureCopyWith<T, $Res> {
  factory $EntryFailureCopyWith(
          EntryFailure<T> value, $Res Function(EntryFailure<T>) then) =
      _$EntryFailureCopyWithImpl<T, $Res, EntryFailure<T>>;
}

/// @nodoc
class _$EntryFailureCopyWithImpl<T, $Res, $Val extends EntryFailure<T>>
    implements $EntryFailureCopyWith<T, $Res> {
  _$EntryFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidKeyCopyWith<T, $Res> {
  factory _$$InvalidKeyCopyWith(
          _$InvalidKey<T> value, $Res Function(_$InvalidKey<T>) then) =
      __$$InvalidKeyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidKeyCopyWithImpl<T, $Res>
    extends _$EntryFailureCopyWithImpl<T, $Res, _$InvalidKey<T>>
    implements _$$InvalidKeyCopyWith<T, $Res> {
  __$$InvalidKeyCopyWithImpl(
      _$InvalidKey<T> _value, $Res Function(_$InvalidKey<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidKey<T> implements InvalidKey<T> {
  const _$InvalidKey();

  @override
  String toString() {
    return 'EntryFailure<$T>.invalidKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidKey<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidKey,
  }) {
    return invalidKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidKey,
  }) {
    return invalidKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidKey<T> value) invalidKey,
  }) {
    return invalidKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidKey<T> value)? invalidKey,
  }) {
    return invalidKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidKey<T> value)? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey(this);
    }
    return orElse();
  }
}

abstract class InvalidKey<T> implements EntryFailure<T> {
  const factory InvalidKey() = _$InvalidKey<T>;
}
