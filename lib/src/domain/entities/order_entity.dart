// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @JsonKey(name: 'table_number') required int tableNumber,
    @JsonKey(name: 'waiter_id') required int waiterId,
    @JsonKey(name: 'order_date') required DateTime orderDate,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'order_id') int? id,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
