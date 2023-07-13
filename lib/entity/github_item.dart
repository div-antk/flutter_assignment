import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'github_item.freezed.dart';
part 'github_item.g.dart';

@freezed
class GithubItem with _$GithubItem {
  const factory GithubItem({
    required String username,
    required String repositoryName,
    required String description,
    required String language,
    required int stars,
  }) = _GithubItem;

  // json形式で受け取るためのコードを生成するために記述
  factory GithubItem.fromJson(Map<String, dynamic> json) =>
      _$GithubItemFromJson(json);
}