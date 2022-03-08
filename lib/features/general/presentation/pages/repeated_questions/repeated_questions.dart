part of 'repeated_questions_imports.dart';

class RepeatedQuestions extends StatefulWidget {
  const RepeatedQuestions({Key? key}) : super(key: key);

  @override
  _RepeatedQuestionsState createState() => _RepeatedQuestionsState();
}

class _RepeatedQuestionsState extends State<RepeatedQuestions> {
  final RepeatedQuestionsData questionsData = RepeatedQuestionsData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
