import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/welcom/cubit/welcom_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/core/routers/app_routers.dart';

late SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => WelcomCubit()..determinePosition(),
      child: MaterialApp.router(
        routerConfig: AppRouts.routs,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
      ),
    );
  }
}
