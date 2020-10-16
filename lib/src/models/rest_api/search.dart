import 'package:json_annotation/json_annotation.dart';
import 'package:onemapsg/src/models/models.dart';

part 'search.g.dart';

@JsonSerializable(explicitToJson: true)

/// [Search] contains a list of [SearchResult] each representing a location found.
class Search {
  int found;
  int totalNumPages;
  int pageNum;
  List<SearchResult> results;

  Search(this.found, this.totalNumPages, this.pageNum, this.results);

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
  Map<String, dynamic> toJson() => _$SearchToJson(this);
}
