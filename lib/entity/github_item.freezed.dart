// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubItem _$GithubItemFromJson(Map<String, dynamic> json) {
  return _GithubItem.fromJson(json);
}

/// @nodoc
mixin _$GithubItem {
  String get username => throw _privateConstructorUsedError;
  String get repositoryName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubItemCopyWith<GithubItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubItemCopyWith<$Res> {
  factory $GithubItemCopyWith(
          GithubItem value, $Res Function(GithubItem) then) =
      _$GithubItemCopyWithImpl<$Res, GithubItem>;
  @useResult
  $Res call(
      {String username,
      String repositoryName,
      String description,
      String language,
      int stars});
}

/// @nodoc
class _$GithubItemCopyWithImpl<$Res, $Val extends GithubItem>
    implements $GithubItemCopyWith<$Res> {
  _$GithubItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? repositoryName = null,
    Object? description = null,
    Object? language = null,
    Object? stars = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubItemCopyWith<$Res>
    implements $GithubItemCopyWith<$Res> {
  factory _$$_GithubItemCopyWith(
          _$_GithubItem value, $Res Function(_$_GithubItem) then) =
      __$$_GithubItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String repositoryName,
      String description,
      String language,
      int stars});
}

/// @nodoc
class __$$_GithubItemCopyWithImpl<$Res>
    extends _$GithubItemCopyWithImpl<$Res, _$_GithubItem>
    implements _$$_GithubItemCopyWith<$Res> {
  __$$_GithubItemCopyWithImpl(
      _$_GithubItem _value, $Res Function(_$_GithubItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? repositoryName = null,
    Object? description = null,
    Object? language = null,
    Object? stars = null,
  }) {
    return _then(_$_GithubItem(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubItem implements _GithubItem {
  const _$_GithubItem(
      {required this.username,
      required this.repositoryName,
      required this.description,
      required this.language,
      required this.stars});

  factory _$_GithubItem.fromJson(Map<String, dynamic> json) =>
      _$$_GithubItemFromJson(json);

  @override
  final String username;
  @override
  final String repositoryName;
  @override
  final String description;
  @override
  final String language;
  @override
  final int stars;

  @override
  String toString() {
    return 'GithubItem(username: $username, repositoryName: $repositoryName, description: $description, language: $language, stars: $stars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubItem &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stars, stars) || other.stars == stars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, repositoryName, description, language, stars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubItemCopyWith<_$_GithubItem> get copyWith =>
      __$$_GithubItemCopyWithImpl<_$_GithubItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubItemToJson(
      this,
    );
  }
}

abstract class _GithubItem implements GithubItem {
  const factory _GithubItem(
      {required final String username,
      required final String repositoryName,
      required final String description,
      required final String language,
      required final int stars}) = _$_GithubItem;

  factory _GithubItem.fromJson(Map<String, dynamic> json) =
      _$_GithubItem.fromJson;

  @override
  String get username;
  @override
  String get repositoryName;
  @override
  String get description;
  @override
  String get language;
  @override
  int get stars;
  @override
  @JsonKey(ignore: true)
  _$$_GithubItemCopyWith<_$_GithubItem> get copyWith =>
      throw _privateConstructorUsedError;
}
