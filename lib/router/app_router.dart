/// `AppRouter` defines the navigation routes for the application.
/// 
/// It extends from the generated `$AppRouter` class and overrides the `routes` getter to define the route hierarchy.
/// The `@AutoRouterConfig()` annotation is used to specify additional configuration options for the router.
/// 
/// Routes:
/// - `/`: Main route of the application.
///   - `/home`: Home page of the application.
///   - `/profile`: Wrapper for profile-related routes.
///     - `/profile/main`: Main profile page.
///     - `/profile/details`: Detailed view of the profile.
/// - `/profile/details`: Standalone route for profile details.
/// 
/// Usage:
/// Routes are used within the application to navigate between different pages. Each `AutoRoute` in the `routes` list
/// corresponds to a page in the application. Nested routes are defined within the `children` property of an `AutoRoute`.
/// 
/// Example:
/// To navigate to the Home page, use `context.router.push(HomeRoute())`.
/// To navigate to the Profile page, use `context.router.push(ProfileRoute())`.
/// 
/// Notes:
/// - The `initial` property in `AutoRoute` indicates which route is the default route within its respective level.
/// - Nested routes (`ProfileRouteWrapper.page`) allow grouping of related routes and sub-navigation within a section.

import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/router/app_router.gr.dart';

class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: ProfileRouteWrapper.page, children: [
            AutoRoute(page: ProfileRoute.page, initial: true),
            AutoRoute(page: ProfileDetailsRoute.page),
          ]),
        ]),
        AutoRoute(page: ProfileDetailsRoute.page),
      ];
}
