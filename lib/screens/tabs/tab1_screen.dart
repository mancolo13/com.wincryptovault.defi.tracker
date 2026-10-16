import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • DeFiVault'),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TOTAL DEFI ASSETS VALUE', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                SizedBox(height: 6),
                Text('\$34,840.20', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900, color: Colors.white)),
                SizedBox(height: 4),
                Text('≈ 13.12 ETH • Staking Yield: +\$18.40/day', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 13, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Connected Wallet Tokens', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _tokenTile('Ethereum', 'ETH', '8.45 ETH', '\$22,480', Icons.currency_bitcoin),
          _tokenTile('Solana', 'SOL', '64.2 SOL', '\$9,630', Icons.blur_on),
          _tokenTile('USD Coin', 'USDC', '2,730 USDC', '\$2,730', Icons.attach_money),
        ],
      ),
    );
  }

  Widget _tokenTile(String name, String symbol, String amount, String usd, IconData ic) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
            child: Icon(ic, color: AppTheme.primaryColor),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text(symbol, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(usd, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(amount, style: const TextStyle(color: AppTheme.secondaryColor, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

