import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> _searchResults = [];
  int _searchCount = 0;

  Future<List<dynamic>> _fetchRepositories(String keyword) async {
    String apiUrl = 'https://api.github.com/search/repositories?q=$keyword';

    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      _searchCount = data['total_count'] ?? 0;
      return _searchResults = data['items'];
    } else {
      print('検索エラー: ${response.statusCode}');
      return [];
    }
  }

  void _searchRepositories(String keyword) async {
    List<dynamic> results = await _fetchRepositories(keyword);
    setState(() {
      _searchResults = results;
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Image.asset(
        'assets/GitHub-Logo.png',
        width: 80,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0, // 影
    );
  }

  Widget _buildSearchResultList() {
    return ListView.builder(
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        String userName = _searchResults[index]['owner']['login'];
        String repositoryName = _searchResults[index]['name'];
        String desctiption = _searchResults[index]['description'] ?? '';
        String language = _searchResults[index]['language'] ?? '';
        int stars = _searchResults[index]['stargazers_count'] ?? 0;
        return ListTile(
          title: Text(
            '$userName/$repositoryName',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 4,
              ),
              Text(
                desctiption,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '🌐$language',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '⭐️$stars',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.8,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30.0)),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'enter text',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onFieldSubmitted: (String value) {
                    // Stringじゃない場合の処理要るかも
                    _searchRepositories(value);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Total $_searchCount'),
            const Divider(
              thickness: 0.8,
              indent: 16,
              endIndent: 16,
            ),
            Expanded(child: _buildSearchResultList()),
          ],
        ),
      ),
    );
  }
}
