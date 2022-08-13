import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoadHomeEvent extends HomeEvent {
  final String number;

  const LoadHomeEvent(this.number);
  @override
  List<Object?> get props => [number];
}
