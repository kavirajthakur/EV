import 'package:ev/app_routes.dart';
import 'package:ev/emailconfirm.dart';
import 'package:ev/register.dart';
import 'package:ev/signin.dart';
import 'package:ev/splashscreen.dart';
import 'package:ev/successful.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: '/splashscreen',
      page: () => MySplash(),
    ),
    GetPage(
      name: '/signin',
      page: () => Home(),

    ),GetPage(
      name: '/register',
      page: () => Register(),
    ),
    GetPage(name: '/emailconfirmation', page: ()=>EmailConfirm(),
    ),
    GetPage(name: '/successful', page: ()=>Successful())
  ];
}