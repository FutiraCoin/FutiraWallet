part of 'main_widgets_imports.dart';

class MainScreenTokens extends StatelessWidget {
  const MainScreenTokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: MyText(title: "Tokens", color: MyColors.black, size: 12),
          ),
          BuildTokenItem(
            contract: "0x9557bd44266Be183098Bdcc93EcaDA23c5725f8b",
            name: "TFUTI Token",
            symbol: "TFUTI",
          ),
          BuildTokenItem(
            contract: "0xB3C0E0723ADf1E0b0b5F31AaaA6A1a13fb2413ff",
            name: "FOFA Token",
            symbol: "FOFA",
          ),
        ],
      ),
    );
  }
}
