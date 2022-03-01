import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(const LangInitial());

  onUpdateLanguage(String lang){
    emit(LangUpdateState(Locale(lang)));
  }

}
