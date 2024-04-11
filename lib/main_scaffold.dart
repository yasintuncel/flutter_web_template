import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app/partials/side_bar_menu_item.dart';

class MainScaffold extends ConsumerWidget {
  const MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final selectedRoute = ref.watch(selectedRouteProvider);
    final sideBarkey = ValueKey(Random().nextInt(1000000));
    return AdminScaffold(
      appBar: AppBar(title: const Text('Responsive Admin Panel with GoRouter')),
      body: navigationShell,
      sideBar: SideBar(
        key: sideBarkey,
        onSelected: (item) {
          // ref.read(selectedRouteProvider.notifier).update((state) => item.route ?? '');
          context.go(item.route ?? '/');
        },
        items: menuItems,
        selectedRoute: '/',
      ),
    );
  }
}



































///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///


// final sidebarItemProvider = StateProvider<SideBarItem>((ref) {
//   return SideBarItem.dashboard;
// });

// class ScaffoldWithSideBar extends ConsumerWidget {
//   const ScaffoldWithSideBar({super.key, required this.navigationShell});
//   final StatefulNavigationShell navigationShell;

//   SideBarItem getSideBarItem(AdminMenuItem item) {
//     for (var value in SideBarItem.values) {
//       if (item.route == value.name) {
//         return value;
//       }
//     }
//     return SideBarItem.dashboard;
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final sidebarItem = ref.watch(sidebarItemProvider);

//     final sideBarkey = ValueKey(Random().nextInt(1000000));
//     return AdminScaffold(
//       appBar: AppBar(title: const Text('Admin Panel with GoRouter Demo')),
//       body: navigationShell,
//       sideBar: SideBar(
//           key: sideBarkey,
//           activeBackgroundColor: Colors.white,
//           onSelected: (item) {
//             final sidebarItem = getSideBarItem(item);
//             ref
//                 .read(sidebarItemProvider.notifier)
//                 .update((state) => sidebarItem);

//             final index = sidebarItem.index;
//             navigationShell.goBranch(index,
//                 initialLocation: index == navigationShell.currentIndex);
//           },
//           items: SideBarItem.values
//               .map((e) => AdminMenuItem(
//                   title: e.value, icon: e.iconData, route: e.name))
//               .toList(),
//           selectedRoute: sidebarItem.name),
//     );
//   }
// }
