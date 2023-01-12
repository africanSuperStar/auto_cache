// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_capsule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemoryCapsule<T> _$$_MemoryCapsuleFromJson<T>(Map<String, dynamic> json) =>
    _$_MemoryCapsule<T>(
      object: json['object'],
      expiry: json['expiry'] == null
          ? null
          : Expiry<dynamic>.fromJson(json['expiry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemoryCapsuleToJson<T>(_$_MemoryCapsule<T> instance) =>
    <String, dynamic>{
      'object': instance.object,
      'expiry': instance.expiry,
    };
