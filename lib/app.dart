import 'package:flutter/material.dart';
import 'package:flutter_5iw2/home/blocs/home_bloc.dart';
import 'package:flutter_5iw2/home/home_screen.dart';
import 'package:flutter_5iw2/product/product_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()..add(HomeDataLoaded())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Exercises',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) {
          final args = settings.arguments;
          switch (settings.name) {
            case ProductScreen.routeName:
              return MaterialPageRoute(builder: (context) => ProductScreen(id: args as int));
          }

          return null;
        },
        home: const HomeScreen(),
      ),
    );
  }
}
