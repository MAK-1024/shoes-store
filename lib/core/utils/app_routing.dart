import 'package:go_router/go_router.dart';
import '../../features/shop/presentation/views/shop_view.dart';
import '../../features/shopping/presentation/view/widgets/itemDetaView.dart';
import '../../features/splash/presentation/views/splash_view3.dart';
import '../../features/splash/presentation/views/widgets/start_view.dart';


abstract class AppRouter
{
  static const KStartView = '/startView';
  static const KRegisterView = '/registerView';
  static const KShopView = '/ShopView';
  static const KItemDeta = '/ItemdetalisView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView3(),
      ),

      GoRoute(
        path: KStartView,
        builder: (context, state) => StartView(),
      ),

      GoRoute(
        path: KShopView,
        builder: (context, state) => ShopView(),
      ),

      GoRoute(
        path: KItemDeta,
        builder: (context, state) => ItemdetalisView(),
      ),
      //
      // GoRoute(
      //   path: KSearchViewView,
      //   builder: (context, state) => SearchView(),
      // ),
    ],
  );
}
