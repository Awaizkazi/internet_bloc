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
          child: BlocConsumer<InternetBloc, InternetState>(
            listener: (context, state) {
              // TODO: By Using this w'll show the SnackBar, AlertDialog,etc...
              // TODO: implement listener
            },
            builder: (context, state) {
            // TODO Creating Bloc for checking whether am i Connected to Internet / Wifi or not
            // TODO: By using the builder the UI Will be change 
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
