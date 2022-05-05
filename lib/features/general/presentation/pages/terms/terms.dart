part of 'terms_imports.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  final TermsData termsData = TermsData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Terms & Conditions"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "Overview", color: MyColors.primary, size: 10),
          ),
          MyText(
            title:
            "We know that Terms can be long and confusing, so we will do our best to keep things as clear and concise as possible. This section provides a brief summary of the highlights of this Agreement. Please note that when you accept this Agreement, you are accepting all of the terms and",
            color: MyColors.blackOpacity,
            size: 9,letterSpace: 1.1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "How you accept this policy", color: MyColors.primary, size: 10),
          ),
          MyText(
            title:
            "By creating or importing a locally hosted wallet (a “Wallet”), or visiting our website, you acknowledge that you have read, understood, and agreed to these Terms, as well as the accompanying [Privacy Policy](/privacy-policy) We reserve the right to change these Terms at any time. Any",
            color: MyColors.blackOpacity,
            size: 9,letterSpace: 1.1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(
                title: "Wallet Registration and account information", color: MyColors.primary, size: 10),
          ),
          MyText(
            title:
            "You must either import or create a Wallet in order to use Futira Coin. When you create a Wallet, you will be assigned a private key. You will be prompted to download and save a keystore - your private key encrypted with a password. You will be responsible for maintaining the",
            color: MyColors.blackOpacity,
            size: 9,letterSpace: 1.1,),
        ],
      ),
    );
  }
}
