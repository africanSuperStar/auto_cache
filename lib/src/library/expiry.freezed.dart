// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expiry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expiry<T> _$ExpiryFromJson<T>(Map<String, dynamic> json) {
  return _FromValue<T>.fromJson(json);
}

/// @nodoc
mixin _$Expiry<T> {
  dynamic get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromValue<T> value) from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromValue<T> value)? from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromValue<T> value)? from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpiryCopyWith<T, Expiry<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpiryCopyWith<T, $Res> {
  factory $ExpiryCopyWith(Expiry<T> value, $Res Function(Expiry<T>) then) =
      _$ExpiryCopyWithImpl<T, $Res, Expiry<T>>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class _$ExpiryCopyWithImpl<T, $Res, $Val extends Expiry<T>>
    implements $ExpiryCopyWith<T, $Res> {
  _$ExpiryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FromValueCopyWith<T, $Res>
    implements $ExpiryCopyWith<T, $Res> {
  factory _$$_FromValueCopyWith(
          _$_FromValue<T> value, $Res Function(_$_FromValue<T>) then) =
      __$$_FromValueCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$_FromValueCopyWithImpl<T, $Res>
    extends _$ExpiryCopyWithImpl<T, $Res, _$_FromValue<T>>
    implements _$$_FromValueCopyWith<T, $Res> {
  __$$_FromValueCopyWithImpl(
      _$_FromValue<T> _value, $Res Function(_$_FromValue<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FromValue<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FromValue<T> extends _FromValue<T> {
  _$_FromValue(this.value) : super._();

  factory _$_FromValue.fromJson(Map<String, dynamic> json) =>
      _$$_FromValueFromJson(json);

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Expiry<$T>.from(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FromValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FromValueCopyWith<T, _$_FromValue<T>> get copyWith =>
      __$$_FromValueCopyWithImpl<T, _$_FromValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) from,
  }) {
    return from(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? from,
  }) {
    return from?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromValue<T> value) from,
  }) {
    return from(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromValue<T> value)? from,
  }) {
    return from?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromValue<T> value)? from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromValueToJson<T>(
      this,
    );
  }
}

abstract class _FromValue<T> extends Expiry<T> {
  factory _FromValue(final dynamic value) = _$_FromValue<T>;
  _FromValue._() : super._();

  factory _FromValue.fromJson(Map<String, dynamic> json) =
      _$_FromValue<T>.fromJson;

  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_FromValueCopyWith<T, _$_FromValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
