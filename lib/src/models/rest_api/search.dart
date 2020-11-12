import 'package:json_annotation/json_annotation.dart';

import 'search_result.dart';

part 'search.g.dart';

/// [Search] contains a list of [SearchResult] each representing a location found.
@JsonSerializable(explicitToJson: true, createToJson: false)
class Search {
  /// Total number of results found across all pages.
  int found;

  /// The total number of pages for this search.
  int totalNumPages;

  /// The page number for this list of results.
  int pageNum;

  /// List of [SearchResult] containing results from search.
  List<SearchResult> results;

  Search(this.found, this.totalNumPages, this.pageNum, this.results);

  /// @nodoc
  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
