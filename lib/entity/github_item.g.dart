// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubItem _$$_GithubItemFromJson(Map<String, dynamic> json) =>
    _$_GithubItem(
      username: json['username'] as String,
      repositoryName: json['repositoryName'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      stars: json['stars'] as int,
    );

Map<String, dynamic> _$$_GithubItemToJson(_$_GithubItem instance) =>
    <String, dynamic>{
      'username': instance.username,
      'repositoryName': instance.repositoryName,
      'description': instance.description,
      'language': instance.language,
      'stars': instance.stars,
    };
