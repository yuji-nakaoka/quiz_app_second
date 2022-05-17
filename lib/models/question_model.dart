import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:enum_to_string/enum_to_string.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

enum Type { multiple }

enum Difficulty {
  any,
  easy,
  medium,
  hard,
}

@freezed
abstract class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String category,
    @QuestionEnumConverter() required Type type,
    required Difficulty difficulty,
    required String question,
    required String correctAnswer,
    required List<String> incorrectAnswers,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

QuestionModel questionModelFromJson(String str) =>
    QuestionModel.fromJson(json.decode(str));

String questionModelToJson(QuestionModel data) => json.encode(data.toJson());

class QuestionEnumConverter implements JsonConverter<Type?, String?> {
  const QuestionEnumConverter();

  @override
  Type? fromJson(String? json) => EnumToString.fromString(
        Type.values,
        json ?? '',
      );

  @override
  String? toJson(Type? object) =>
      object == null ? null : EnumToString.convertToString(object);
}
