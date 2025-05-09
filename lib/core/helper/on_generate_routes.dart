import 'package:finance_flutter_app/bottom_nav_bar_view.dart';
import 'package:finance_flutter_app/features/home/presentation/views/manage_finance_view.dart';
import 'package:finance_flutter_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:finance_flutter_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import '../../features/category/presentation/views/manage_category_view.dart';
import '../../features/notification/presentation/views/notification_view.dart';
import '../../features/user_setup/presentation/views/user_setup_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case UserSetupView.routeName:
      return MaterialPageRoute(builder: (context) => const UserSetupView());
    case NotificationView.routeName:
      return MaterialPageRoute(builder: (context) => const NotificationView());
    case BottomNavBarView.routeName:
      return MaterialPageRoute(builder: (context) => const BottomNavBarView());
    case ManageTransactionView.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder:
            (context) => ManageTransactionView(
              transactionTypeEnum: args['transactionTypeEnum'],
              financeItemModel: args['financeItemModel'],
              modelDateTime: args['modelDateTime'],
              currentDateTime: args['currentDateTime'],
              isFromHomePage: args['isFromHomePage'],
              categoryFilteredId: args['categoryFilteredId'],
              isAmountPositive: args['isAmountPositive'],
              dateTimeRange: args['dateTimeRange'],
            ),
      );
    // case AllActivitiesView.routeName:
    //   return MaterialPageRoute(builder: (context) => const AllActivitiesView());
    case ManageCategoryView.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder:
            (context) => ManageCategoryView(
              categoryModel: args['categoryModel'],
              categories: args['categories'],
            ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
