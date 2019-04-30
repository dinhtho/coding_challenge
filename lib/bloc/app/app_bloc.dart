import 'package:coding_challenge/bloc/home_page_bloc.dart';

class AppBloc {
  HomePageBloc _homePageBloc;

  AppBloc() {
    _homePageBloc = HomePageBloc();
  }

  HomePageBloc get homePageBloc => _homePageBloc;
}
