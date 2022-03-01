part of 'state_cubit.dart';

abstract class StateState extends Equatable {
  final AppLifecycleState state;
  const StateState(this.state);
}

class StateInitial extends StateState {
  const StateInitial() : super(AppLifecycleState.resumed);

  @override
  List<Object> get props => [state];
}

class StateUpdated extends StateState {
  const StateUpdated(AppLifecycleState state) : super(state);


  @override
  List<Object> get props => [state];
}
