import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/feathers/categorise/cubit/categoriess_cubit.dart';
import 'package:project/feathers/categorise/view/categorise_body_view.dart';

class Categorise extends StatelessWidget {
  const Categorise({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriessCubit()..getPlacess(),
      child: const Scaffold(
        body: SafeArea(
          child: CategorieBodyView(),
        ),
      ),
    );
  }
}
