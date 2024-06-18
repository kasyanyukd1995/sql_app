// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemEntityImpl _$$OrderItemEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemEntityImpl(
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      id: json['order_item_id'] as int?,
    );

Map<String, dynamic> _$$OrderItemEntityImplToJson(
        _$OrderItemEntityImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'price': instance.price,
      'order_item_id': instance.id,
    };
