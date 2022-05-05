part of 'support_imports.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  final SupportData supportData=SupportData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Support"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildSupportForm(supportData: supportData),
          BuildSupportButton(supportData: supportData,),
        ],
      ),
    );
  }
}
