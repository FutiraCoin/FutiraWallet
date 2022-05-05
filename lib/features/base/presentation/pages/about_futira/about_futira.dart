part of 'about_futira_imports.dart';

class AboutFutira extends StatelessWidget {
  const AboutFutira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "About Futira",
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        shadowColor: MyColors.primary.withOpacity(.2),
        elevation: 4,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildClickableItem(title: "Rate us on Play Store", onTap: () {}),
              BuildClickableItem(title: "Privacy Policy", onTap: () =>AutoRouter.of(context).push(PrivacyPolicyRoute(),)),
              BuildClickableItem(title: "Terms& Conditions", onTap: () =>AutoRouter.of(context).push(TermsRoute(),)),
              BuildClickableItem(
                title: "Support",
                onTap: () => AutoRouter.of(context).push(
                  SupportRoute(),
                ),
              ),
              BuildClickableItem(title: "Privacy Policy", onTap: () {}),
              const SizedBox(
                height: 10,
              ),
              MyText(title: "Version 1.1", color: MyColors.black, size: 10),
            ],
          ),
        ),
      ),
    );
  }
}
