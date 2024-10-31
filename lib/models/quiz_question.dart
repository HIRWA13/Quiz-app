class QuizQuestion {
  const QuizQuestion(
      this.question, this.answers); // adding const  prevent changing the model

  final String question;
  final List<String> answers;

  getShuffledAnswers() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
