// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) {
  return Search(
    json['found'] as int,
    json['totalNumPages'] as int,
    json['pageNum'] as int,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : SearchResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
