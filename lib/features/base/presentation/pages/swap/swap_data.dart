part of'swap_imports.dart';

class SwapData{
GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
GenericBloc<DropDownEntity?> dropDownCubit = GenericBloc(null);

String? selectedValue;
List<DropDownEntity> items = [
  DropDownEntity(id: 1, name: "Fut", img: Res.futira),
  DropDownEntity(id: 1, name: "Fut", img: Res.futira),
  DropDownEntity(id: 1, name: "Fut", img: Res.futira),
  DropDownEntity(id: 1, name: "Fut", img: Res.futira),

];
List<String> items2 = ["Futira","Eur"];


}