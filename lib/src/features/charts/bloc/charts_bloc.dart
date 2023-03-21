import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'charts_event.dart';
part 'charts_state.dart';

class ChartsBloc extends Bloc<ChartsEvent, ChartsState> {
  ChartsBloc() : super(ChartsState()) {
    on<ChartsEventCheckboxShow>((event, emit) {
      _onShow(event, emit);
    });
    on<ChartsEventCheckboxClose>((event, emit) {
      _onClose(event, emit);
    });
  }

  void _onShow(
    ChartsEventCheckboxShow event,
    Emitter<ChartsState> emit,
  ) {
    try {
      emit(
        state.copyWith(status: CheckboxStatus.show),
      );
    } catch (error) {
      addError(error);
    }
  }

  void _onClose(
    ChartsEventCheckboxClose event,
    Emitter<ChartsState> emit,
  ) {
    try {
      emit(
        state.copyWith(status: CheckboxStatus.notShow),
      );
    } catch (error) {
      addError(error);
    }
  }
}
