import 'package:flashcards_quiz/models/layout_questions_model.dart';
import 'package:flashcards_quiz/models/naviagation_questions_model.dart';
import 'package:flashcards_quiz/models/widget_questions_model.dart';
import 'package:flashcards_quiz/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0, //widget_questions
    topicColor: cardColor,
    topicIcon: CupertinoIcons.antenna_radiowaves_left_right,
    topicName: "Electronics and \nCommunications",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1, //state
    topicColor: cardColor,
    topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "NEC model 2",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,  //navigation
    topicColor: cardColor,
    topicIcon: CupertinoIcons.paperplane,
    topicName: "NEC model 3",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3, //layout
    topicColor: cardColor,
    topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "NEC model 4",
    topicQuestions: layOutQuestionsList,
  ),
];
