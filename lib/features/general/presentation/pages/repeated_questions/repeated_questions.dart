part of 'repeated_questions_imports.dart';

class RepeatedQuestions extends StatefulWidget {
  const RepeatedQuestions({Key? key}) : super(key: key);

  @override
  _RepeatedQuestionsState createState() => _RepeatedQuestionsState();
}

class _RepeatedQuestionsState extends State<RepeatedQuestions> {
  final RepeatedQuestionsData questionsData = RepeatedQuestionsData();

  bool _expanded = false;
  bool _expanded1 = false;
  bool _expanded2 = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Repeated Questions",),
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          animationDuration: Duration(milliseconds: 1000),
          dividerColor: Colors.grey,
          expansionCallback: (panelIndex, isExpanded) {
            if(panelIndex==0){
              _expanded = !_expanded;
            } else if(panelIndex==1){
              _expanded1 = !_expanded1;
            }else{
              _expanded2 = !_expanded2;
            }
            setState(() {

            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: MyText(title: 'Click To Expand', size: 14, color: MyColors.black,),
                );
              },
              body:ListTile(
                title: MyText(title: 'this description of ExpansionPanel', size: 14, color: MyColors.blackOpacity,),
              ),
              isExpanded: _expanded,
              canTapOnHeader: true,
            ),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: MyText(title: 'Click To Expand', size: 14, color: MyColors.black,),
                );
              },
              body:ListTile(
                title: MyText(title: 'this description of ExpansionPanel', size: 14, color: MyColors.blackOpacity,),
              ),
              isExpanded: _expanded1,
              canTapOnHeader: true,
            ),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: MyText(title: 'Click To Expand', size: 14, color: MyColors.black,),
                );
              },
              body:ListTile(
                title: MyText(title: 'this description of ExpansionPanel', size: 14, color: MyColors.blackOpacity,),
              ),
              isExpanded: _expanded2,
              canTapOnHeader: true,
            ),
          ],
        ),
      ),
    );
  }
}
