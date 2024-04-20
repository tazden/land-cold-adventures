class QuestionModal{
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModal({
    required this.correctAnswerIndex,
    required this.question,
    required this.options
});
}

const List<QuestionModal> questions=[
  QuestionModal(correctAnswerIndex: 2, question: "What place does it occupy in terms of territory among other states of America?", options: [
      "2",
      "3",
      "1"

  ],),
  QuestionModal(correctAnswerIndex: 0, question: "What is not included on the Alaska State Seal?", options: [
    "Hydroelectric power station",
    "Vessel",
    "Train"

  ],),
  QuestionModal(correctAnswerIndex: 2, question: "Name the capital of the state of Alaska.", options: [
    "Calgary",
    "Montevideo",
    "Juneau"

  ],),
  QuestionModal(correctAnswerIndex: 1, question: "What strait separates Alaska from Russia?", options: [
    "Bosphorus",
    "Beringov",
    "Barents"

  ],),

  QuestionModal(correctAnswerIndex: 0, question: "What nickname does not belong to the state of Alaska?", options: [
    "Winter State",
    "The Last Frontier",
    "Land of the Midnight Sun"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "How is Alaska translated from Aleutian?", options: [
    "Walrus Valley",
    "Whale place",
    "Penguin Sanctuary"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "What is the name of the tallest mountain in North America, located in Alaska?", options: [
    "McKinsey",
    "Denali",
    "Elbrus"

  ],),

  QuestionModal(correctAnswerIndex: 1, question: "Under which Russian monarch was the sale of Alaska to America carried out?", options: [
    "Alexander I",
    "Alexander II",
    "Alexander III"

  ],),

  QuestionModal(correctAnswerIndex: 2, question: "What was the name of the river in Alaska that became the symbol of the “gold rush” in the USA?", options: [
    "Amazon",
    "Yukon",
    "Klondike"

  ],),

  QuestionModal(correctAnswerIndex: 2, question: "What administrative name has Alaska never had?", options: [
    "Territory",
    "District",
    "Department"

  ],),
];