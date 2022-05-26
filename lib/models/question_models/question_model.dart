// To parse this JSON data, do
//
//     final questionModel = questionModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

QuestionModel questionModelFromJson(String str) =>
    QuestionModel.fromJson(json.decode(str));

String questionModelToJson(QuestionModel data) => json.encode(data.toJson());

@freezed
abstract class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required int responseCode,
    required List<Result> results,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    required String category,
    required Type type,
    required Difficulty difficulty,
    required String question,
    required String correctAnswer,
    required List<String> incorrectAnswers,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

enum Difficulty { ANY, EASY, MEDIUM, HARD }

final difficultyValues = EnumValues({
  "any": Difficulty.ANY,
  "easy": Difficulty.EASY,
  "hard": Difficulty.HARD,
  "medium": Difficulty.MEDIUM
});

enum Type { MULTIPLE }

final typeValues = EnumValues({"multiple": Type.MULTIPLE});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
