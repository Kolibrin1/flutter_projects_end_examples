// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterStateLoading _$$_CharacterStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterStateLoadingToJson(
        _$_CharacterStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_CharacterStateLoaded _$$_CharacterStateLoadedFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterStateLoaded(
      characterLoaded:
          Character.fromJson(json['characterLoaded'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterStateLoadedToJson(
        _$_CharacterStateLoaded instance) =>
    <String, dynamic>{
      'characterLoaded': instance.characterLoaded,
      'runtimeType': instance.$type,
    };

_$_CharacterStateError _$$_CharacterStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterStateErrorToJson(
        _$_CharacterStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
