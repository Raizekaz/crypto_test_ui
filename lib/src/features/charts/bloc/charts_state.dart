// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'charts_bloc.dart';

enum CheckboxStatus { show, notShow }

extension CheckboxStatusX on CheckboxStatus {
  bool get isShow => this == CheckboxStatus.show;
  bool get isNotShow => this == CheckboxStatus.notShow;
}

class ChartsState extends Equatable {
  const ChartsState({
    this.status = CheckboxStatus.show,
  });

  final CheckboxStatus status;

  @override
  List<Object> get props => [status];

  ChartsState copyWith({
    CheckboxStatus? status,
  }) {
    return ChartsState(
      status: status ?? this.status,
    );
  }
}
