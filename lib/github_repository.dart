import 'dart:convert';

import 'package:http/http.dart' as http;
import 'entity/github_item.dart';

class GithubRepository {
  Future<List<GithubItem>> fetchItems(String keyword) async {
    String apiUrl = 'https://api.github.com/search/repositories?q=$keyword';

    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // レスポンスデータをJson形式からdartオブジェクトにデコード
      dynamic data = json.decode(response.body);
      // Iterableは複数のアイテムが順番に並んでいるもので、Listもその一種
      // Iterableは順番にアイテムを取り出すための方法を提供しており、ループ処理に便利
      Iterable l = data['items'];
      // 取得したリポジトリのリストを `l` として反復処理し、各リポジトリの情報を `GithubItem` オブジェクトとしてマッピングする
      List<GithubItem> items = List<GithubItem>.from(l.map((item) => GithubItem(
            username: item['owner']['login'] ?? '',
            repositoryName: item['name'] ?? '',
            description: item['description'] ?? '',
            language: item['language'] ?? '',
            stars: item['stargazers_count'] ?? 0,
          ))).toList();
      return items;
    } else {
      throw Exception('Failed to load items');
    }
  }
}
