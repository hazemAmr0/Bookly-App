 
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Splash/presentation/Views/Splash_View.dart';
import 'package:go_router/go_router.dart';
  abstract class AppRouter{

// GoRouter configuration
static final router = GoRouter(
  routes: [
    GoRoute(
      path: splashView,
      builder: (context, state) =>const  SplashView(),
    ),
       GoRoute(
        path: homeView,
        builder: (context, state) => const  HomeView(),
      ),
  ],
);


  }      