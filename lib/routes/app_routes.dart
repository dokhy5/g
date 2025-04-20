import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/features/authentication/screens/onboarding/onboarding.dart';
import 'package:g/features/authentication/screens/onboarding/widgets/on_boardin_page.dart';
import 'package:g/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:g/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:g/features/authentication/screens/sign_up/signup.dart';
import 'package:g/features/authentication/screens/sign_up/verify_email.dart';
import 'package:g/features/presonalization/screens/address/address.dart';
import 'package:g/features/presonalization/screens/profile/profile.dart';
import 'package:g/features/presonalization/screens/settings/settings.dart';
import 'package:g/features/shop/screens/all_brands/all_brands.dart';
import 'package:g/features/shop/screens/cart/cart.dart';
import 'package:g/features/shop/screens/checkout/checkout.dart';
import 'package:g/features/shop/screens/home/home.dart';
import 'package:g/features/shop/screens/order/order.dart';
import 'package:g/features/shop/screens/store/store.dart';
import 'package:g/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:g/features/shop/screens/wishlist/wishlist.dart';
import 'package:g/routes/routes.dart'; // لو GRoutes موجود هنا
import 'package:get/get_navigation/get_navigation.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: GRoutes.home, page: () => const HomeScreen()),
    GetPage(name: GRoutes.store, page: () => const StoreScreen()),
    GetPage(name: GRoutes.favorites, page: () => const WishlistScreen()),
    GetPage(name: GRoutes.settings, page: () => const SettingsScreen()),
    GetPage(name: GRoutes.subCategories, page: () => const SubCategoriesScreen()),
    GetPage(name: GRoutes.orders, page: () => const OrderScreen()),
    GetPage(name: GRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: GRoutes.cart, page: () => const CartScreen()),

    GetPage(name: GRoutes.uerProfile, page: () => const ProfileScreen()),
    GetPage(name: GRoutes.uerAddress, page: () => const AddressScreen()),
    GetPage(name: GRoutes.signin, page: () => const LoginScreen()),
    GetPage(name: GRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: GRoutes.forgotPassword, page: () => const ForgetPassword()),
    GetPage(name: GRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: GRoutes.onBoarding, page: () => const OnboardingScreen()),
  ];
}
