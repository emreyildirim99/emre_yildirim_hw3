import 'Question.dart';
import 'Option.dart';

class QuizManager {


  void setQuestions(String category) {
    //Questions

    //Capitals questions start

   if(category == 'capitals'){
      //Capitals questions start
      _questions.add(Question('Moskova hangi ülkenin başkentidir?', [
        Option('Romanya', 0),
        Option('Fransa', 0),
        Option('Rusya', 10),
        Option('İspanya', 0)
      ]));

      _questions.add(Question('Paris hangi ülkenin başkentidir?', [
        Option('Brezilya', 0),
        Option('Hollanda', 0),
        Option('Fransa', 10),
        Option('İtalya', 0)
      ]));

      _questions.add(Question('Kanada\'nın başkenti neresidir?', [
        Option('Toronto', 0),
        Option('Ottava', 10),
        Option('Ontario', 0),
        Option('Montreal', 0)
      ]));

      _questions.add(Question('Lima hangi ülkenin başkentidir?', [
        Option('Şili', 0),
        Option('Peru', 10),
        Option('Fas', 0)
      ]));

      _questions.add(Question('Kahire hangi ülkenin başkentidir?', [
        Option('Mısır', 10),
        Option('Libya', 0),
        Option('İran', 0)
      ]));

      _questions.add(Question('Bangkok hangi ülkenin başkentidir?', [
        Option('Tayland', 10),
        Option('Tayvan', 0)
      ]));
      //Capitals questions end


    }else if(category == 'math'){

      //Math questions start
      _questions.add(Question('1 + 2 + 3 + 4 + 5 = ?', [
        Option('15', 10),
        Option('16', 0),
        Option('17', 0),
        Option('20', 0)
      ]));

      _questions.add(Question('3 x 2 + 5 = ?', [
        Option('11', 10),
        Option('21', 0),
        Option('31', 0)
      ]));

      _questions.add(Question('64 ÷ 8 x 8 = ?', [
        Option('1', 0),
        Option('64', 10),
        Option('128', 0)
      ]));

      _questions.add(Question('1 + 3 + 5 + 7 + 9 + 11 = ?', [
        Option('34', 0),
        Option('35', 0),
        Option('36', 10),
        Option('37', 0),
      ]));
      //Math questions end

    }

    //questions end
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
