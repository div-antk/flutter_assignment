import 'package:flutter_assignment/repository/github_repository.dart';
import 'package:flutter_assignment/state/repository_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _githubRepositoryProvider =
    Provider<GithubRepository>((ref) => GithubRepository());

final githubNotifierProvider =
    StateNotifierProvider<GithubNotifier, AsyncValue<RepositoryState>>(
        (ref) => GithubNotifier(ref.watch(_githubRepositoryProvider)));

class GithubNotifier extends StateNotifier<AsyncValue<RepositoryState>> {
  final GithubRepository _repository;

  GithubNotifier(this._repository) : super(const AsyncValue.loading()) {
    fetchItems();
  }

  Future<void> fetchItems(String keyword) async {
    state = const AsyncValue.loading();
    try {
      final items = await _repository.fetchItems(keyword);
      final newState = state.value?.copyWith(repositoryList: items);

      if (newState == null) {
        return;
      }

      state = AsyncValue.data(newState);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}
