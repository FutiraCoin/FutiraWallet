part of'register_active_account_widgets_imports.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Keeping our community safe",
            color: MyColors.black,
            size: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 50),
            child: MyText(
              title: "we have sent a secured code to your phone, please enter it below.",
              color: MyColors.blackOpacity,
              size: 14,
              letterSpace: 1.1,
            ),
          ),

        ],
      ),
    );
  }
}
