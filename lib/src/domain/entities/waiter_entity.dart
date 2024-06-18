// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'waiter_entity.freezed.dart';
part 'waiter_entity.g.dart';

@freezed
class WaiterEntity with _$WaiterEntity {
  const factory WaiterEntity({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'hire_date') required DateTime hireDate,
    @JsonKey(name: 'waiter_id') int? id,
  }) = _WaiterEntity;

  factory WaiterEntity.fromJson(Map<String, dynamic> json) =>
      _$WaiterEntityFromJson(json);
}
