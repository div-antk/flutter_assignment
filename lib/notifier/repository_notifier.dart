import 'package:flutter_assignment/repository/github_repository.dart';
import 'package:flutter_assignment/state/repository_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _githubRepositoryProvider =
    Provider<GithubRepository>((ref) => GithubRepository());

final githubNotifierProvider =
    StateNotifierProvider<GithubNotifier, AsyncValue<RepositoryState>>(
        (ref) => GithubNotifier(ref.watch(_githubRepositoryProvider)));

class GithubNotifier extends StateNotifier<AsyncValue<RepositoryState>> {
  
}
