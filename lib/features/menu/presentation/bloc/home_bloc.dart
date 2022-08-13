import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_bloc_state.dart';
import 'home_bloc_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is LoadHomeEvent) {
        emit(HomeLoadedState(event.number));
      }
    });
  }
}
