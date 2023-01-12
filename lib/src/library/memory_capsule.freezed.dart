// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_capsule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoryCapsule<T> _$MemoryCapsuleFromJson<T>(Map<String, dynamic> json) {
  return _MemoryCapsule<T>.fromJson(json);
}

/// @nodoc
mixin _$MemoryCapsule<T> {
  /// Object to be cached
  dynamic get object => throw _privateConstructorUsedError;

  /// Expiration date
  Expiry<dynamic>? get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryCapsuleCopyWith<T, MemoryCapsule<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCapsuleCopyWith<T, $Res> {
  factory $MemoryCapsuleCopyWith(
          MemoryCapsule<T> value, $Res Function(MemoryCapsule<T>) then) =
      _$MemoryCapsuleCopyWithImpl<T, $Res, MemoryCapsule<T>>;
  @useResult
  $Res call({dynamic object, Expiry<dynamic>? expiry});

  $ExpiryCopyWith<dynamic, $Res>? get expiry;
}

/// @nodoc
class _$MemoryCapsuleCopyWithImpl<T, $Res, $Val extends MemoryCapsule<T>>
    implements $MemoryCapsuleCopyWith<T, $Res> {
  _$MemoryCapsuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Expiry<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpiryCopyWith<dynamic, $Res>? get expiry {
    if (_value.expiry == null) {
      return null;
    }

    return $ExpiryCopyWith<dynamic, $Res>(_value.expiry!, (value) {
      return _then(_value.copyWith(expiry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemoryCapsuleCopyWith<T, $Res>
    implements $MemoryCapsuleCopyWith<T, $Res> {
  factory _$$_MemoryCapsuleCopyWith(
          _$_MemoryCapsule<T> value, $Res Function(_$_MemoryCapsule<T>) then) =
      __$$_MemoryCapsuleCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({dynamic object, Expiry<dynamic>? expiry});

  @override
  $ExpiryCopyWith<dynamic, $Res>? get expiry;
}

/// @nodoc
class __$$_MemoryCapsuleCopyWithImpl<T, $Res>
    extends _$MemoryCapsuleCopyWithImpl<T, $Res, _$_MemoryCapsule<T>>
    implements _$$_MemoryCapsuleCopyWith<T, $Res> {
  __$$_MemoryCapsuleCopyWithImpl(
      _$_MemoryCapsule<T> _value, $Res Function(_$_MemoryCapsule<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_$_MemoryCapsule<T>(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Expiry<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoryCapsule<T> implements _MemoryCapsule<T> {
  const _$_MemoryCapsule({this.object, this.expiry});

  factory _$_MemoryCapsule.fromJson(Map<String, dynamic> json) =>
      _$$_MemoryCapsuleFromJson(json);

  /// Object to be cached
  @override
  final dynamic object;

  /// Expiration date
  @override
  final Expiry<dynamic>? expiry;

  @override
  String toString() {
    return 'MemoryCapsule<$T>(object: $object, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoryCapsule<T> &&
            const DeepCollectionEquality().equals(other.object, object) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(object), expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoryCapsuleCopyWith<T, _$_MemoryCapsule<T>> get copyWith =>
      __$$_MemoryCapsuleCopyWithImpl<T, _$_MemoryCapsule<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoryCapsuleToJson<T>(
      this,
    );
  }
}

abstract class _MemoryCapsule<T> implements MemoryCapsule<T> {
  const factory _MemoryCapsule(
      {final dynamic object,
      final Expiry<dynamic>? expiry}) = _$_MemoryCapsule<T>;

  factory _MemoryCapsule.fromJson(Map<String, dynamic> json) =
      _$_MemoryCapsule<T>.fromJson;

  @override

  /// Object to be cached
  dynamic get object;
  @override

  /// Expiration date
  Expiry<dynamic>? get expiry;
  @override
  @JsonKey(ignore: true)
  _$$_MemoryCapsuleCopyWith<T, _$_MemoryCapsule<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
