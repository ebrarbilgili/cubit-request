part of '../home_controller.dart';

@immutable
abstract class HomeState {
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeCompleted extends HomeState {
  HomeCompleted(this.listHomeModel);

  final List<HomeModel> listHomeModel;

  @override
  List<Object> get props => [listHomeModel];
}
