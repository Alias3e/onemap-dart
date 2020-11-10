import 'package:json_annotation/json_annotation.dart';

import 'search_result.dart';

part 'search.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)

/// [Search] contains a list of [SearchResult] each representing a location found.
class Search {
  int found;
  int totalNumPages;
  int pageNum;
  List<SearchResult> results;

  Search(this.found, this.totalNumPages, this.pageNum, this.results);

  /// @nodoc
  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
