import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_bloc/blocs/internet_bloc/internet_bloc.dart';
import 'package:internet_bloc/blocs/internet_bloc/internet_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // TODO Creating Bloc for checking whether am i Connected to Internet / Wifi or not
          child: BlocBuilder<InternetBloc, InternetState>(
            builder: (context, state) {
              if (state is InternetGainedState) {
                return Text('Internet Connected');
              } else if (state is InternetLostState) {
                return Text('Not Connected !');
              } else {
                return Text('Loading...');
              }
            },
          ),
        ),
      ),
    );
  }
}
