import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:souqna_app/screens/auth/sign_up_screen.dart';

import '../screens/auth/bindings/sign_up_binding.dart';
import '../screens/cart_screen/binding/cart_binding.dart';
import '../screens/cart_screen/cart_screen.dart';
import '../screens/checkout_screen/checkout_screen.dart';
import '../screens/food_details_screen/binding/food_details_binding.dart';
import '../screens/food_details_screen/food_details_screen.dart';
import '../screens/home_cat_screen/binding/home_cat_binding.dart';
import '../screens/home_cat_screen/home_cat_screen.dart';
import '../screens/home_screen/home.dart';
import '../screens/verification_code_screen/binding/verification_code_binding.dart';
import '../screens/verification_code_screen/verification_code_screen.dart';
import '../screens/welcome__and_sign_in_screen/binding/welcome_screen_and_sign_in_binding.dart';
import '../screens/welcome__and_sign_in_screen/welcome_and_sign_in_screen.dart';


class AppRoutes {
  static const String initialRoute = '/initialRoute';

  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String checkout = '/checkout_screen';

  static const String homeCatScreen = '/home_cat_screen';

  static const String homeScreen = '/home_screen';

  static const String cartScreen = '/cart_screen';

  static const String verificationScreen = '/verification_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static final List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: checkout,
      page: () => CheckoutScreen(),
    ),
    GetPage(
      name: homeCatScreen,
      page: () => HomeCatScreen(),
      binding: HomeCatBinding(),
    ),
    GetPage(
      name: homeScreen,
      page: () => home(), // Specify the widget for the home screen
      // Add bindings if necessary
    ),
    GetPage(
      name: cartScreen,
      page: () => Cart(), // Specify the widget for the Cart screen
      binding: CartBinding(), // Bind the Cart controller
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(), // Specify the widget for the Verification screen
      binding: VerificationBinding(), // Bind the Verification controller
    ),
    GetPage(
      name: foodDetailsScreen,
      page: () => foodDetails(), // Specify the widget for the FoodDetails screen
      binding: FoodDetailsBinding(), // Bind the FoodDetails controller
    ),
    GetPage(
      name: initialRoute, // Add route name
      page: () => WelcomeScreen(),
      binding: WelcomeBinding(), // Add binding
    ),

    // Add more routes if needed
  ];
}

