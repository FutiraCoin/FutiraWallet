part of'register_imports.dart';

class RegisterData{
 late PageController pageController;

 final GlobalKey<FormState> nameFormKey = GlobalKey();
 final GlobalKey<FormState> phoneFormKey = GlobalKey();
 final GlobalKey<CustomButtonState> btnKey = GlobalKey();
 String? activeCode;
 final GenericBloc<bool> codeCubit = GenericBloc(false);
 final GenericBloc<bool> termsCubit = GenericBloc(false);

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

   GenericBloc<RegisterParams> registerBloc =GenericBloc(RegisterParams(name: '',phone: "",password: "",code: "z"));

  goNext(){
    pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
  goBack(){
    pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

 onChangeName(String value){
  registerBloc.state.data.name = value;
  registerBloc.onUpdateData(registerBloc.state.data);
 }

 onChangePhone(String value){
  registerBloc.state.data.phone = value;
  registerBloc.onUpdateData(registerBloc.state.data);
 }

 onChangePassword(String value){
  registerBloc.state.data.password = value;
  registerBloc.onUpdateData(registerBloc.state.data);
 }



 onComplete(String value){
  codeCubit.onUpdateData(value.length==6);
  activeCode = value;
 }

}