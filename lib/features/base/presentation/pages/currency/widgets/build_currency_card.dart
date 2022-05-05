part of 'currency_widgets_imports.dart';

class BuildCurrencyCard extends StatelessWidget {
    final CurrencyData currencyData;
  final int index;

  const BuildCurrencyCard({Key? key, required this.index,required this.currencyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      shadowColor: MyColors.primary.withOpacity(.2),
      elevation: 4,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: MyText(
                  title: "FUT - Futira Coin", color: MyColors.black, size: 10),
            ),
            BlocBuilder<GenericBloc<int>, GenericState<int>>(
              bloc: currencyData.currencyCubit,
              builder: (context, state) {
                return Radio<int>(
                  value: index,
                  groupValue: state.data,
                  onChanged: (v) {
                    currencyData.currencyCubit.onUpdateData(index);
                  },
                  activeColor: MyColors.primary,
                  hoverColor: MyColors.white,
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
