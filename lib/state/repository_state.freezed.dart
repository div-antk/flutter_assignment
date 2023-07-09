// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryState {
  List<GithubItem>? get repositoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryStateCopyWith<RepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryStateCopyWith<$Res> {
  factory $RepositoryStateCopyWith(
          RepositoryState value, $Res Function(RepositoryState) then) =
      _$RepositoryStateCopyWithImpl<$Res, RepositoryState>;
  @useResult
  $Res call({List<GithubItem>? repositoryList});
}

/// @nodoc
class _$RepositoryStateCopyWithImpl<$Res, $Val extends RepositoryState>
    implements $RepositoryStateCopyWith<$Res> {
  _$RepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryList = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryList: freezed == repositoryList
          ? _value.repositoryList
          : repositoryList // ignore: cast_nullable_to_non_nullable
              as List<GithubItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoryStateCopyWith<$Res>
    implements $RepositoryStateCopyWith<$Res> {
  factory _$$_RepositoryStateCopyWith(
          _$_RepositoryState value, $Res Function(_$_RepositoryState) then) =
      __$$_RepositoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GithubItem>? repositoryList});
}

/// @nodoc
class __$$_RepositoryStateCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res, _$_RepositoryState>
    implements _$$_RepositoryStateCopyWith<$Res> {
  __$$_RepositoryStateCopyWithImpl(
      _$_RepositoryState _value, $Res Function(_$_RepositoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryList = freezed,
  }) {
    return _then(_$_RepositoryState(
      repositoryList: freezed == repositoryList
          ? _value._repositoryList
          : repositoryList // ignore: cast_nullable_to_non_nullable
              as List<GithubItem>?,
    ));
  }
}

/// @nodoc

class _$_RepositoryState implements _RepositoryState {
  const _$_RepositoryState({final List<GithubItem>? repositoryList})
      : _repositoryList = repositoryList;

  final List<GithubItem>? _repositoryList;
  @override
  List<GithubItem>? get repositoryList {
    final value = _repositoryList;
    if (value == null) return null;
    if (_repositoryList is EqualUnmodifiableListView) return _repositoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RepositoryState(repositoryList: $repositoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryState &&
            const DeepCollectionEquality()
                .equals(other._repositoryList, _repositoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_repositoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryStateCopyWith<_$_RepositoryState> get copyWith =>
      __$$_RepositoryStateCopyWithImpl<_$_RepositoryState>(this, _$identity);
}

abstract class _RepositoryState implements RepositoryState {
  const factory _RepositoryState({final List<GithubItem>? repositoryList}) =
      _$_RepositoryState;

  @override
  List<GithubItem>? get repositoryList;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryStateCopyWith<_$_RepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
