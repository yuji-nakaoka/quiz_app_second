import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_app_second/models/question_models/question_model.dart';
import 'package:quiz_app_second/repositories/base_repository.dart';
import 'package:quiz_app_second/repositories/request_state.dart';
import '../models/failure_models/failure.dart';
import 'package:enum_to_string/enum_to_string.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

class client extends BaseQuizRepository {
  final Reader _read;

  client(this._read);

  Future<RequestState<List<QuestionModel>>> getQuestions(
      {required int numQuestions,
      required int categoryId,
      required Difficulty difficulty}) async {
    try {
      final queryParameters = {
        'type': 'multiple',
        'amount': numQuestions,
        'category': categoryId,
      };

      if (difficulty != Difficulty.ANY) {
        queryParameters
            .addAll({'difficulty': EnumToString.convertToString(difficulty)});
      }

      final response = await _read(dioProvider).get(
        'https://opentdb.com/api.php',
        queryParameters: queryParameters,
      );
      ;

      if (response.statusCode == 200) {
        final data = Map<String, dynamic>.from(response.data);
        final results = List<Map<String, dynamic>>.from(data['results'] ?? []);
        if (results.isNotEmpty) {
          return results.map((e) => Result.fromMap(e)).toList()
              as Future<RequestState<List<QuestionModel>>>;
        }
      }
      ;
      return RequestState.idle();
    } on DioError catch (err) {
      throw Failure(
          message: err.response?.statusMessage ?? ' Something went wrong!');
    } on SocketException catch (e) {
      throw const Failure(message: 'Please check your connection.');
    }
  }
}
