import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'state_state.dart';

class StateCubit extends Cubit<StateState> {

  StateCubit() : super(const StateInitial());

  onUpdateState(AppLifecycleState state){
    emit(StateUpdated(state));
  }

}
