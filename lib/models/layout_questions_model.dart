class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "Describe Agrani?",
    options: [
      const LayOutOption(text: "Hot", isCorrect: false),
      const LayOutOption(text: "Sexy", isCorrect: false),
      const LayOutOption(text: "Intelligent", isCorrect: false),
      const LayOutOption(text: "All of the above", isCorrect: true),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "MainAxisAlignment", isCorrect: true),
  ),

   LayOutQuestion(
      text:"What is the purpose of the control unit in a CPU?",
      options: [
        const LayOutOption(text: "To perform arithmetic and logical \noperations on data.", isCorrect: false),
        const LayOutOption(text: "To store and retrieve data from \nmemory", isCorrect: false),
        const LayOutOption(text: "To print data from memory", isCorrect: false),
        const LayOutOption(text: "interpret instructions and control the \nflow of data", isCorrect: true),
      ],
      id:15 ,
      correctAnswer: const LayOutOption(text: "To interpret instructions and control the flow of data within the CPU.", isCorrect: true)),


];
