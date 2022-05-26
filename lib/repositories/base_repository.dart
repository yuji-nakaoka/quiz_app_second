import 'package:quiz_app_second/models/question_models/question_model.dart';
import 'package:quiz_app_second/repositories/request_state.dart';

abstract class BaseQuizRepository {
  Future<RequestState<List<QuestionModel>>> getQuestions({
    required int numQuestions,
    required int categoryId,
    required Difficulty difficulty,
  });
}
