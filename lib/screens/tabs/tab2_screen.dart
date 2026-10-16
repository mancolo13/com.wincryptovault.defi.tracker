import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Portfolio Allocation')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Holdings Distribution', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 12),
                Text('• 64.5% Ethereum & L2 Ecosystem', style: TextStyle(color: AppTheme.secondaryColor)),
                SizedBox(height: 6),
                Text('• 27.6% Solana & SPL Tokens', style: TextStyle(color: Colors.white70)),
                SizedBox(height: 6),
                Text('• 7.9% Stablecoins (USDC/USDT)', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

