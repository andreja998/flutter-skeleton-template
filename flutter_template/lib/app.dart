
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/config/router.gr.dart';
import 'package:flutter_template/config/themes.dart';
import 'package:flutter_template/features/product_example/application/bloc/product_details_bloc.dart';
import 'package:flutter_template/features/product_example/presentation/screens/product_details.dart';
import 'package:flutter_template/flavors.dart';

class App extends StatelessWidget {
  final String flavor;
  
  const App({super.key, required this.flavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => ProductDetailsBloc()))
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Flutter Base ${F.title}',
        theme: AppTheme(Brightness.light).themeData,
        darkTheme: AppTheme(Brightness.dark).themeData,
      ),
    );
  }
}