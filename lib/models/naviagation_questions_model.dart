class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "I am a widget that manages a stack of child widgets and allows for navigating between them. What am I?",
    options: [
      const NavigationsOption(text: "Route", isCorrect: false),
      const NavigationsOption(text: "Scaffold", isCorrect: false),
      const NavigationsOption(text: "Navigator", isCorrect: true),
      const NavigationsOption(text: "PageView", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Navigator", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        " I am a method that removes the current route from the stack and returns to the previous route. What am I?",
    options: [
      const NavigationsOption(text: "Navigator.push()", isCorrect: false),
      const NavigationsOption(text: "Navigator.pop()", isCorrect: true),
      const NavigationsOption(
          text: "Navigator.removeRoute()", isCorrect: false),
      const NavigationsOption(text: " Route.dispose()", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "Navigator.pop()", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "I am a widget property that must be passed to navigation methods like Navigator.push() to specify the next screen. What am I?",
    options: [
      const NavigationsOption(text: "context", isCorrect: true),
      const NavigationsOption(text: "Scaffold", isCorrect: false),
      const NavigationsOption(text: "State", isCorrect: false),
      const NavigationsOption(text: "Build", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "context", isCorrect: true),
  ),
];
