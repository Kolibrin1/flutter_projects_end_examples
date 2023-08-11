// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterEventCopyWith<CharacterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterEventFetchCopyWith<$Res>
    implements $CharacterEventCopyWith<$Res> {
  factory _$$CharacterEventFetchCopyWith(_$CharacterEventFetch value,
          $Res Function(_$CharacterEventFetch) then) =
      __$$CharacterEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$CharacterEventFetchCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventFetch>
    implements _$$CharacterEventFetchCopyWith<$Res> {
  __$$CharacterEventFetchCopyWithImpl(
      _$CharacterEventFetch _value, $Res Function(_$CharacterEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$CharacterEventFetch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterEventFetch implements CharacterEventFetch {
  const _$CharacterEventFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'CharacterEvent.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEventFetchCopyWith<_$CharacterEventFetch> get copyWith =>
      __$$CharacterEventFetchCopyWithImpl<_$CharacterEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharacterEventFetch implements CharacterEvent {
  const factory CharacterEventFetch(
      {required final String name,
      required final int page}) = _$CharacterEventFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$CharacterEventFetchCopyWith<_$CharacterEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterState _$CharacterStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _CharacterStateLoading.fromJson(json);
    case 'loaded':
      return _CharacterStateLoaded.fromJson(json);
    case 'error':
      return _CharacterStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CharacterState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateLoaded value) loaded,
    required TResult Function(_CharacterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateLoaded value)? loaded,
    TResult? Function(_CharacterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateLoaded value)? loaded,
    TResult Function(_CharacterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharacterStateLoadingCopyWith<$Res> {
  factory _$$_CharacterStateLoadingCopyWith(_$_CharacterStateLoading value,
          $Res Function(_$_CharacterStateLoading) then) =
      __$$_CharacterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterStateLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterStateLoading>
    implements _$$_CharacterStateLoadingCopyWith<$Res> {
  __$$_CharacterStateLoadingCopyWithImpl(_$_CharacterStateLoading _value,
      $Res Function(_$_CharacterStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CharacterStateLoading implements _CharacterStateLoading {
  const _$_CharacterStateLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$_CharacterStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CharacterStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateLoaded value) loaded,
    required TResult Function(_CharacterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateLoaded value)? loaded,
    TResult? Function(_CharacterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateLoaded value)? loaded,
    TResult Function(_CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterStateLoadingToJson(
      this,
    );
  }
}

abstract class _CharacterStateLoading implements CharacterState {
  const factory _CharacterStateLoading() = _$_CharacterStateLoading;

  factory _CharacterStateLoading.fromJson(Map<String, dynamic> json) =
      _$_CharacterStateLoading.fromJson;
}

/// @nodoc
abstract class _$$_CharacterStateLoadedCopyWith<$Res> {
  factory _$$_CharacterStateLoadedCopyWith(_$_CharacterStateLoaded value,
          $Res Function(_$_CharacterStateLoaded) then) =
      __$$_CharacterStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Character characterLoaded});

  $CharacterCopyWith<$Res> get characterLoaded;
}

/// @nodoc
class __$$_CharacterStateLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterStateLoaded>
    implements _$$_CharacterStateLoadedCopyWith<$Res> {
  __$$_CharacterStateLoadedCopyWithImpl(_$_CharacterStateLoaded _value,
      $Res Function(_$_CharacterStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterLoaded = null,
  }) {
    return _then(_$_CharacterStateLoaded(
      characterLoaded: null == characterLoaded
          ? _value.characterLoaded
          : characterLoaded // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get characterLoaded {
    return $CharacterCopyWith<$Res>(_value.characterLoaded, (value) {
      return _then(_value.copyWith(characterLoaded: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterStateLoaded implements _CharacterStateLoaded {
  const _$_CharacterStateLoaded(
      {required this.characterLoaded, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$_CharacterStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterStateLoadedFromJson(json);

  @override
  final Character characterLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterState.loaded(characterLoaded: $characterLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterStateLoaded &&
            (identical(other.characterLoaded, characterLoaded) ||
                other.characterLoaded == characterLoaded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterStateLoadedCopyWith<_$_CharacterStateLoaded> get copyWith =>
      __$$_CharacterStateLoadedCopyWithImpl<_$_CharacterStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characterLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateLoaded value) loaded,
    required TResult Function(_CharacterStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateLoaded value)? loaded,
    TResult? Function(_CharacterStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateLoaded value)? loaded,
    TResult Function(_CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterStateLoadedToJson(
      this,
    );
  }
}

abstract class _CharacterStateLoaded implements CharacterState {
  const factory _CharacterStateLoaded(
      {required final Character characterLoaded}) = _$_CharacterStateLoaded;

  factory _CharacterStateLoaded.fromJson(Map<String, dynamic> json) =
      _$_CharacterStateLoaded.fromJson;

  Character get characterLoaded;
  @JsonKey(ignore: true)
  _$$_CharacterStateLoadedCopyWith<_$_CharacterStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharacterStateErrorCopyWith<$Res> {
  factory _$$_CharacterStateErrorCopyWith(_$_CharacterStateError value,
          $Res Function(_$_CharacterStateError) then) =
      __$$_CharacterStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterStateErrorCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterStateError>
    implements _$$_CharacterStateErrorCopyWith<$Res> {
  __$$_CharacterStateErrorCopyWithImpl(_$_CharacterStateError _value,
      $Res Function(_$_CharacterStateError) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CharacterStateError implements _CharacterStateError {
  const _$_CharacterStateError({final String? $type})
      : $type = $type ?? 'error';

  factory _$_CharacterStateError.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CharacterStateError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateLoaded value) loaded,
    required TResult Function(_CharacterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateLoaded value)? loaded,
    TResult? Function(_CharacterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateLoaded value)? loaded,
    TResult Function(_CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterStateErrorToJson(
      this,
    );
  }
}

abstract class _CharacterStateError implements CharacterState {
  const factory _CharacterStateError() = _$_CharacterStateError;

  factory _CharacterStateError.fromJson(Map<String, dynamic> json) =
      _$_CharacterStateError.fromJson;
}
