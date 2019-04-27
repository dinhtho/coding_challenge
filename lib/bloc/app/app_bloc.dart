import 'package:coding_challenge/bloc/row_bloc.dart';
import 'package:coding_challenge/bloc/detail_view_bloc.dart';

class AppBloc {
  RowBloc _rowBloc;
  DetailViewBloc _detailViewBloc;

  AppBloc() {
    _rowBloc = RowBloc();
    _detailViewBloc = DetailViewBloc();
  }

  RowBloc get rowBloc => _rowBloc;

  DetailViewBloc get detailViewBloc => _detailViewBloc;
}
