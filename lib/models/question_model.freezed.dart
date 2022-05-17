// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String get category => throw _privateConstructorUsedError;
  @QuestionEnumConverter()
  Type get type => throw _privateConstructorUsedError;
  @DifficultyEnumConverter()
  Difficulty get difficulty => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  List<String> get incorrectAnswers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res>;
  $Res call(
      {String category,
      @QuestionEnumConverter() Type type,
      @DifficultyEnumConverter() Difficulty difficulty,
      String question,
      String correctAnswer,
      List<String> incorrectAnswers});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  final QuestionModel _value;
  // ignore: unused_field
  final $Res Function(QuestionModel) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: incorrectAnswers == freezed
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$_QuestionModelCopyWith(
          _$_QuestionModel value, $Res Function(_$_QuestionModel) then) =
      __$$_QuestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      @QuestionEnumConverter() Type type,
      @DifficultyEnumConverter() Difficulty difficulty,
      String question,
      String correctAnswer,
      List<String> incorrectAnswers});
}

/// @nodoc
class __$$_QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res>
    implements _$$_QuestionModelCopyWith<$Res> {
  __$$_QuestionModelCopyWithImpl(
      _$_QuestionModel _value, $Res Function(_$_QuestionModel) _then)
      : super(_value, (v) => _then(v as _$_QuestionModel));

  @override
  _$_QuestionModel get _value => super._value as _$_QuestionModel;

  @override
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswers = freezed,
  }) {
    return _then(_$_QuestionModel(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: incorrectAnswers == freezed
          ? _value._incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel implements _QuestionModel {
  const _$_QuestionModel(
      {required this.category,
      @QuestionEnumConverter() required this.type,
      @DifficultyEnumConverter() required this.difficulty,
      required this.question,
      required this.correctAnswer,
      required final List<String> incorrectAnswers})
      : _incorrectAnswers = incorrectAnswers;

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

  @override
  final String category;
  @override
  @QuestionEnumConverter()
  final Type type;
  @override
  @DifficultyEnumConverter()
  final Difficulty difficulty;
  @override
  final String question;
  @override
  final String correctAnswer;
  final List<String> _incorrectAnswers;
  @override
  List<String> get incorrectAnswers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrectAnswers);
  }

  @override
  String toString() {
    return 'QuestionModel(category: $category, type: $type, difficulty: $difficulty, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionModel &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswers, _incorrectAnswers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(correctAnswer),
      const DeepCollectionEquality().hash(_incorrectAnswers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      __$$_QuestionModelCopyWithImpl<_$_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(this);
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {required final String category,
      @QuestionEnumConverter() required final Type type,
      @DifficultyEnumConverter() required final Difficulty difficulty,
      required final String question,
      required final String correctAnswer,
      required final List<String> incorrectAnswers}) = _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  @QuestionEnumConverter()
  Type get type => throw _privateConstructorUsedError;
  @override
  @DifficultyEnumConverter()
  Difficulty get difficulty => throw _privateConstructorUsedError;
  @override
  String get question => throw _privateConstructorUsedError;
  @override
  String get correctAnswer => throw _privateConstructorUsedError;
  @override
  List<String> get incorrectAnswers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
