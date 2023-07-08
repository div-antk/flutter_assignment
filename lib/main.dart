import 'package:flutter/material.dart';
import 'package:flutter_assignment/page/top_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: TopPage(),
    ),
  );
}
