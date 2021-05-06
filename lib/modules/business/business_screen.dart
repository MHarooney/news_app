import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit.dart';
import 'package:news_app/shared/states.dart';
import 'package:news_app/shared/widgets/components.dart';
import 'package:news_app/shared/widgets/separated_builder.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (context, state) {
        var list = AppCubit.get(context).business;
        return articleBuilder(
          list,
          context
        );
      },
    );
  }
}