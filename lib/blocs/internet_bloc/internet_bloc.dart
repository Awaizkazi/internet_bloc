import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_bloc/blocs/internet_bloc/internet_event.dart';
import 'package:internet_bloc/blocs/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc() : super(InternetInitialState()) {
    // todo Ye Check karra hota hai ki Konsa Event ane pe kya karna hai 
    on<InternetLostEvent>((event, emit) => null);
    on<InternetGainedEvent>((event, emit) => null);
  }
}
