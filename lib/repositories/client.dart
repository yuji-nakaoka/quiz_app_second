import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_app_second/models/question_models/question_model.dart';
import '../models/failure_models/failure.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

class client {
  final Reader _read;

  client(this._read);

  Future<List<QuestionModel>> getQuestions(String url) async {
    try {
      final response = await _read(dioProvider).get(
        'https://opentdb.com/api.php',
      );
      if (response.statusCode == 200) {
        final data = Map<String, dynamic>.from(response.data);
        final results = List<Map<String, dynamic>>.from(data['results'] ?? []);
        if (results.isNotEmpty) {
          return results.map((e) => Result.fromMap(e)).toList()
              as Future<List<QuestionModel>>;
        }
      }
      ;
      return [];
    } on DioError catch (err) {
      throw Failure(
          message: err.response?.statusMessage ?? ' Something went wrong!');
    } on SocketException catch (e) {
      throw const Failure(message: 'Please check your connection.');
    }
  }
}
