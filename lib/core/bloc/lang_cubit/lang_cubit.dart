import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(const LangInitial());

  onUpdateLanguage(Locale locale){
    emit(LangUpdateState(locale));
  }

}
