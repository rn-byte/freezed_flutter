// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      fName: json['fName'] as String,
      lName: json['lName'] as String,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'fName': instance.fName,
      'lName': instance.lName,
      'isActive': instance.isActive,
    };
