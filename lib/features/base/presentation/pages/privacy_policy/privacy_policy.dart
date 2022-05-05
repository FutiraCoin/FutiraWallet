part of 'privacy_policy_imports.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Privacy Policy"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "Collection and Use", color: MyColors.primary, size: 10),
          ),
          MyText(
              title:
                  "We do not collect or use or store your credit card or card data in our cloud infrastructure. Any card information entered on our app is saved on the device. If you wish to backup your card data, we provided an option to sync and backup to your Google Drive. For a better experience, while using our Service, we may require you to provide us with certain personal information, including but not limited to email, usage activity about how you interact with our app, what content you viewed, and which areas of our App you visited. As is true of most Apps, we may automatically gather information about your activity. We use this information to improve our App and marketing efforts.",
              color: MyColors.blackOpacity,
              size: 9,letterSpace: 1.1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "Sharing Your Information", color: MyColors.primary, size: 10),
          ),
          MyText(
              title:
                  "We will share your information with third parties only in the ways that are described in this privacy statement. We may provide your personal information to companies that provide services to help us with our business activities such as offering customer service. These third parties are authorized to",
              color: MyColors.blackOpacity,
              size: 9,letterSpace: 1.1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "Security", color: MyColors.primary, size: 10),
          ),
          MyText(
              title:
                  "When we collect personal information directly from you, we follow generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. No method of transmission over the Internet, or method of electronic storage, is 100% secure.Therefore, we cannot guarantee its absolute security.",
              color: MyColors.blackOpacity,
              size: 9,letterSpace: 1.1,),
        ],
      ),
    );
  }
}
