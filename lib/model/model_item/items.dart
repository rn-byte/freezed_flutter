import 'package:freezed_annotation/freezed_annotation.dart';
part 'items.freezed.dart';
part 'items.g.dart';

@freezed
class Items with _$Items {
  factory Items({
    required String name,
    String? category,
    required String price,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
