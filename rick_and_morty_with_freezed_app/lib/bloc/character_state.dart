part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _CharacterStateLoading;
  const factory CharacterState.loaded({required Character characterLoaded}) =
      _CharacterStateLoaded;
  const factory CharacterState.error() = _CharacterStateError;

  factory CharacterState.fromJson(Map<String, dynamic> json) =>
      _$CharacterStateFromJson(json);
}
