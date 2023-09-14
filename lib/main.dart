import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otris2/screens/dashboard.dart';
import 'package:otris2/screens/input_medis.dart';
import 'package:otris2/screens/input_pasien.dart';
import 'package:otris2/screens/list_room.dart';
import 'package:otris2/screens/login.dart';
import 'package:otris2/screens/setting_lampu.dart';
import 'package:otris2/screens/setting_meja.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'list_room',
          name: 'list_room',
          builder: (BuildContext context, GoRouterState state) {
            return const ListRoom();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'dashboard',
              name: 'dashboard',
              builder: (BuildContext context, GoRouterState state) {
                return Dashboard();
              },
              routes: <RouteBase>[
                GoRoute(
                    path: 'setting_lampu',
                    name: 'setting_lampu',
                    builder: (BuildContext context, GoRouterState state) {
                      return SettingLampu();
                    }),
                GoRoute(
                    path: 'setting_meja',
                    name: 'setting_meja',
                    builder: (BuildContext context, GoRouterState state) {
                      return SettingMeja();
                    }),
                GoRoute(
                    path: 'input_pasien',
                    name: 'input_pasien',
                    builder: (BuildContext context, GoRouterState state) {
                      return InputPasien();
                    }),
                GoRoute(
                    path: 'input_medis',
                    name: 'input_medis',
                    builder: (BuildContext context, GoRouterState state) {
                      return InputMedis();
                    }),
              ],
            )
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Otris App',
      routerConfig: _router,
    );
  }
}
