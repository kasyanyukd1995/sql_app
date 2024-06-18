// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      tableNumber: json['table_number'] as int,
      waiterId: json['waiter_id'] as int,
      orderDate: DateTime.parse(json['order_date'] as String),
      status: json['status'] as String,
      isActive: json['is_active'] as bool,
      id: json['order_id'] as int?,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'table_number': instance.tableNumber,
      'waiter_id': instance.waiterId,
      'order_date': instance.orderDate.toIso8601String(),
      'status': instance.status,
      'is_active': instance.isActive,
      'order_id': instance.id,
    };
