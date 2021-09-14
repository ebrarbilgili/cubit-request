import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app.dart';
import '../controller/home_controller.dart';
import '../service/home_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar, body: buildBody);
  }

  AppBar get buildAppBar {
    return AppBar(title: Text('Home'));
  }

  Widget get buildBody {
    return BlocProvider(
      create: (context) => buildHomeCubitCreateService,
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state.props.length > 3) {
            print('omg');
          }
        },
        builder: buildBodyBuilder,
      ),
    );
  }

  Widget buildBodyBuilder(context, state) {
    if (state is HomeInitial) {
      return buildHomeInitial(context);
    } else if (state is HomeLoading) {
      return buildHomeLoading;
    } else if (state is HomeCompleted) {
      return buildHomeCompleted(state);
    } else {
      return Center(child: Text('Error occured!'));
    }
  }

  HomeCubit get buildHomeCubitCreateService {
    return HomeCubit(
      service: HomeService(
        service: Dio(BaseOptions(baseUrl: AppConstants.BASE_URL)),
      ),
    );
  }

  Widget buildHomeCompleted(HomeCompleted state) {
    if (state.listHomeModel.isEmpty) {
      return Center(
        child: Text('No Data'),
      );
    }
    return ListView.builder(
      itemCount: state.listHomeModel.length,
      itemBuilder: (BuildContext context, int index) {
        final data = state.listHomeModel[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data.images![1].toString()),
            ),
            title: Text(data.title ?? ''),
          ),
        );
      },
    );
  }

  Widget get buildHomeLoading => Center(child: Text('Yükleniyor'));

  Widget buildHomeInitial(BuildContext context) {
    return Center(child: Text('Welcome to the Home!'));
  }
}
