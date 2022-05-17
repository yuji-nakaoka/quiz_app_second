// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      category: json['category'] as String,
      type: $enumDecode(_$TypeEnumMap, json['type']),
      difficulty: $enumDecode(_$DifficultyEnumMap, json['difficulty']),
      question: json['question'] as String,
      correctAnswer: json['correctAnswer'] as String,
      incorrectAnswers: (json['incorrectAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'type': _$TypeEnumMap[instance.type],
      'difficulty': _$DifficultyEnumMap[instance.difficulty],
      'question': instance.question,
      'correctAnswer': instance.correctAnswer,
      'incorrectAnswers': instance.incorrectAnswers,
    };

const _$TypeEnumMap = {
  Type.multiple: 'multiple',
};

const _$DifficultyEnumMap = {
  Difficulty.any: 'any',
  Difficulty.easy: 'easy',
  Difficulty.medium: 'medium',
  Difficulty.hard: 'hard',
};
