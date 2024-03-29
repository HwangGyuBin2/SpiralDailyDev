// import 'package:apps.daily_memo/data/repository_impl/memo_repository_impl.dart';
// import 'package:apps.daily_memo/presentation/core/route/app_routes.dart';
// import 'package:apps.daily_memo/presentation/view/bottom_bar/bottom_bar.dart';
// import 'package:apps.daily_memo/presentation/view/calendar/calendar_page.dart';
// import 'package:apps.daily_memo/presentation/view/home/home_page.dart';
// import 'package:apps.daily_memo/presentation/view/login/login_page.dart';
// import 'package:apps.daily_memo/presentation/view/memo/memo_list_page.dart';
// import 'package:apps.daily_memo/presentation/view/memo/memo_view.dart';
// import 'package:apps.daily_memo/presentation/view/splash/splash_page.dart';
// import 'package:apps.daily_memo/presentation/view_model/calendar/calendar_page_viewmodel.dart';
// import 'package:apps.daily_memo/presentation/view_model/home/home_viewmodel.dart';
// import 'package:apps.daily_memo/presentation/view_model/memo/memo_list_page_viewmodel.dart';
// import 'package:apps.daily_memo/presentation/view_model/memo/memo_viewmodel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
//
// extension AppRoutesModularExtension on AppRoutes {
//   ChildRoute get getRouter {
//     switch (this) {
//       case AppRoutes.HOME:
//         return ChildRoute(
//           AppRoutes.HOME.path,
//           child: (context, args) {
//             final HomeViewModel homeViewModel = HomeViewModel();
//             final BottomBar bottomBar = BottomBar(navigationItems: const [
//               BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
//               BottomNavigationBarItem(
//                   label: 'calendar', icon: Icon(Icons.calendar_month)),
//             ]);
//             final MemoListPageViewModel memoListPageViewModel =
//                 MemoListPageViewModel(memoRepository: MemoRepositoryImpl());
//             final MemoListPage memoListPage = MemoListPage(
//               memoListPageViewModel: memoListPageViewModel,
//             );
//             final CalendarPage calendarPage = CalendarPage(
//               calendarPageViewModel: CalendarPageViewModel(
//                 memoRepository: MemoRepositoryImpl(),
//               ),
//             );
//
//             return HomePage(
//               bottomBar: bottomBar,
//               homeViewModel: homeViewModel,
//               memoListPage: memoListPage,
//               calendarPage: calendarPage,
//             );
//           },
//         );
//       // case AppRoutes.CALENDAR:
//       //   return ChildRoute(
//       //     name,
//       //     child: (context, args) {
//       //       return CalendarPage();
//       //     },
//       //   );
//       // case AppRoutes.MEMO_LIST:
//       //   return ChildRoute(name, child: (context, args) {
//       //     final MemoListPageViewModel memoListPageViewModel =
//       //         MemoListPageViewModel(memoRepository: MemoRepositoryImpl());
//       //     return MemoListPage(
//       //       memoListPageViewModel: memoListPageViewModel,
//       //     );
//       //   });
//       case AppRoutes.SPLASH:
//         return ChildRoute(
//           AppRoutes.SPLASH.path,
//           child: (context, args) => const SplashPage(),
//         );
//       case AppRoutes.LOGIN:
//         return ChildRoute(
//           AppRoutes.LOGIN.path,
//           child: (context, args) => const LoginPage(),
//         );
//       case AppRoutes.MEMO:
//         return ChildRoute(
//           AppRoutes.MEMO.path,
//           child: (context, args) {
//             int? memoId;
//             try {
//               memoId = args.data["memoId"];
//             } catch (e) {
//               memoId = null;
//             }
//             return MemoView(
//               memoViewModel: MemoViewModel(
//                 memoId: memoId,
//                 memoRepository: MemoRepositoryImpl(),
//               ),
//             );
//           },
//         );
//       default:
//         return ChildRoute(
//           AppRoutes.HOME.path,
//           child: (context, args) {
//             final HomeViewModel homeViewModel = HomeViewModel();
//             final BottomBar bottomBar = BottomBar(navigationItems: const [
//               BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
//               BottomNavigationBarItem(
//                   label: 'calendar', icon: Icon(Icons.calendar_month)),
//             ]);
//             final MemoListPageViewModel memoListPageViewModel =
//                 MemoListPageViewModel(memoRepository: MemoRepositoryImpl());
//             final MemoListPage memoListPage = MemoListPage(
//               memoListPageViewModel: memoListPageViewModel,
//             );
//             final CalendarPage calendarPage = CalendarPage(
//               calendarPageViewModel: CalendarPageViewModel(
//                 memoRepository: MemoRepositoryImpl(),
//               ),
//             );
//
//             return HomePage(
//               bottomBar: bottomBar,
//               homeViewModel: homeViewModel,
//               memoListPage: memoListPage,
//               calendarPage: calendarPage,
//             );
//           },
//         );
//     }
//   }
// }
//
// class AppRoutesModular extends Module {
//   @override
//   List<Bind<Object>> get binds => super.binds;
//
//   @override
//   List<ModularRoute> get routes =>
//       AppRoutes.values.map((e) => e.getRouter).toList();
// }
