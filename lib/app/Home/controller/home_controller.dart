import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../model/home_model.dart';
import '../service/home_service.dart';

part 'state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeService service;

  HomeCubit({required this.service}) : super(HomeInitial()) {
    getData();
  }

  Future<void> getData() async {
    try {
      emit(HomeLoading());

      final response = await service.fetch();

      emit(HomeCompleted(response));
    } catch (e) {
      throw Exception();
    }
  }
}
