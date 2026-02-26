import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/pages/checkout_page.dart';
import 'package:omework_5_6_1/pages/comments_page.dart';
import 'package:omework_5_6_1/pages/finally_page.dart';
import 'package:omework_5_6_1/pages/home_page.dart';
import 'package:omework_5_6_1/pages/payment.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/review_page.dart';
import 'package:omework_5_6_1/pages/shipping_page.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';
import 'package:omework_5_6_1/pages/signup_page.dart';
import 'package:omework_5_6_1/pages/success.dart';
import 'package:omework_5_6_1/pages/your_cart_page.dart';

abstract final class Routes {
  static const home = '/';
  static const signin = '/signin';
  static const signup = '/signup';
  static const products = '/products';
  static const review = '/review';
  static const comment = '/comment';
  static const cart = '/cart';
  static const shipping = '/shipping';
  static const payment = '/payment';
  static const checkout = '/checkout';
  static const success = '/success';
  static const finalPage = '/final';
}

abstract final class AppRoute {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.home,
    routes: [

      GoRoute(
        path: Routes.home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: Routes.signin,
        name: 'signin',
        builder: (context, state) => const SigninPage(),
      ),

      GoRoute(
        path: Routes.signup,
        name: 'signup',
        builder: (context, state) => const SignUp(),
      ),

      GoRoute(
        path: Routes.products,
        name: 'products',
        builder: (context, state) => const ProductsPage(),
      ),

      GoRoute(
        path: Routes.review,
        name: 'review',
        builder: (context, state)=>ReviewPage(),
      ),

      GoRoute(
        path: Routes.comment,
        name: 'comment',
        builder: (context, state) {
          return CommentsPage();
        },
      ),

      GoRoute(
        path: Routes.cart,
        name: 'cart',
        builder: (context, state)=>YourCartPage(),
      ),

      GoRoute(
        path: Routes.shipping,
        name: 'shipping',
        builder: (context, state) => const ShippingPage(),
      ),

      GoRoute(
        path: Routes.payment,
        name: 'payment',
        builder: (context, state) => const Payment(),
      ),

      GoRoute(
        path: Routes.checkout,
        name: 'checkout',
        builder: (context, state) => const CheckoutPage(),
      ),

      GoRoute(
        path: Routes.success,
        name: 'success',
        builder: (context, state) => const Success(),
      ),

      GoRoute(
        path: Routes.finalPage,
        name: 'final',
        builder: (context, state) => const Finally(),
      ),

    ],
  );
}


// abstract final class Routes {
//   static const home = "/";
//   static const signin = "signin";
//   static const signup = "signup";
//   static const products = "products";
//   static const review = "review";
//   static const comment = "comment";
//   static const yourcart = "yourcart";
//   static const payment = "payment";
//   static const shipping = "shipping";
//   static const checkout = "checkout";
//   static const success = "success";
//   static const oxiri = "oxiri";
// }

// abstract final class AppRoute {
//   static String initialLocation = Routes.home;
//
//   static final GoRouter router = GoRouter(
//     initialLocation: initialLocation,
//     routes: [
//       GoRoute(
//         path: Routes.home,
//         builder: (context, state) => const HomePage(),
//         routes: [
//           GoRoute(
//             path: Routes.signin,
//             builder: (context, state) => const SigninPage(),
//             routes: [
//               GoRoute(
//                 path: Routes.products,
//                 builder: (context, state) => const ProductsPage(),
//                 routes: [
//                   GoRoute(
//                     path: Routes.review,
//                     builder: (context, state) {
//                       final data = state.extra as Map<String, dynamic>;
//                       return ReviewPage(map: data);
//                     },
//                     routes: [
//                       GoRoute(
//                         path: Routes.comment,
//                         builder: (context, state) => CommentsPage(),
//                       ),
//                       GoRoute(
//                         path: Routes.yourcart,
//                         builder: (context, state) {
//                           final data = state.extra as Map<String, dynamic>;
//                           return YourCartPage(item: data);
//                         },
//                         routes: [
//                           GoRoute(
//                             path: Routes.shipping,
//                             builder: (context,state)=>const ShippingPage(),
//                             routes: [
//                               GoRoute(
//                                   path: Routes.payment,
//                                   builder: (context,state)=>const Payment(),
//                                   routes: [
//                                     GoRoute(
//                                         path: Routes.checkout,
//                                         builder: (context,state)=>const CheckoutPage(),
//                                         routes: [
//                                           GoRoute(
//                                               path: Routes.oxiri,
//                                               builder: (context,state)=>const Finally(),
//                                               routes: [
//                                                 GoRoute(
//                                                     path: Routes.products,
//                                                     builder: (context,state)=>const ProductsPage(),
//                                                     routes: []
//                                                 )
//                                               ]
//                                           )
//                                         ]
//                                     )
//                                   ]
//                               )
//                             ]
//                           )
//                         ]
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 path: Routes.signup,
//                 builder: (context, state) => const SignUp(),
//                 routes: [
//                   GoRoute(
//                     path: Routes.success,
//                     builder: (context, state) => const Success(),
//                     routes: [
//                       GoRoute(
//                         path: Routes.signin,
//                         builder: (context, state) => const SigninPage(),
//                         routes: [],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     ],
//   );
// }
