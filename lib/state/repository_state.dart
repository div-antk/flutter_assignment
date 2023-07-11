import 'package:flutter_assignment/entity/github_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_state.freezed.dart';

@freezed
class RepositoryState with _$RepositoryState {
  const factory RepositoryState({
    List<GithubItem>? repositoryList,
  }) = _RepositoryState;
}
