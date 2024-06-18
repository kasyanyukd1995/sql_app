// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waiter_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WaiterEntityImpl _$$WaiterEntityImplFromJson(Map<String, dynamic> json) =>
    _$WaiterEntityImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      hireDate: DateTime.parse(json['hire_date'] as String),
      id: json['waiter_id'] as int?,
    );

Map<String, dynamic> _$$WaiterEntityImplToJson(_$WaiterEntityImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'hire_date': instance.hireDate.toIso8601String(),
      'waiter_id': instance.id,
    };
