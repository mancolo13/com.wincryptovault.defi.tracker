import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final pools = [
      {'name': 'Lido Liquid Staking', 'tok': 'stETH', 'apy': '3.8% APY'},
      {'name': 'Aave v3 Lending', 'tok': 'USDC', 'apy': '5.4% APY'},
      {'name': 'Uniswap v3 LP', 'tok': 'ETH/USDC', 'apy': '14.2% APY'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • DeFi Yield Pools')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: pools.length,
        itemBuilder: (context, i) {
          final p = pools[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(p['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Text(p['tok']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black),
                  child: Text(p['apy']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

