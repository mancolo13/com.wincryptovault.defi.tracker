import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.account_balance_wallet_outlined),
            selectedIcon: const Icon(Icons.account_balance_wallet, color: AppTheme.primaryColor),
            label: 'Vault',
          ),
          NavigationDestination(
            icon: const Icon(Icons.donut_large_outlined),
            selectedIcon: const Icon(Icons.donut_large, color: AppTheme.primaryColor),
            label: 'Assets',
          ),
          NavigationDestination(
            icon: const Icon(Icons.water_damage_outlined),
            selectedIcon: const Icon(Icons.water_damage, color: AppTheme.primaryColor),
            label: 'Yields',
          ),
          NavigationDestination(
            icon: const Icon(Icons.local_gas_station_outlined),
            selectedIcon: const Icon(Icons.local_gas_station, color: AppTheme.primaryColor),
            label: 'Network',
          ),
        ],
      ),
    );
  }
}
