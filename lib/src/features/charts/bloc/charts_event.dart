part of 'charts_bloc.dart';

abstract class ChartsEvent extends Equatable {
  const ChartsEvent();

  @override
  List<Object> get props => [];
}

class ChartsEventInitial extends ChartsEvent {
  const ChartsEventInitial();

  @override
  List<Object> get props => [];
}

class ChartsEventCheckboxShow extends ChartsEvent {
  const ChartsEventCheckboxShow();

  @override
  List<Object> get props => [];
}

class ChartsEventCheckboxClose extends ChartsEvent {
  const ChartsEventCheckboxClose();

  @override
  List<Object> get props => [];
}
