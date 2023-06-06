import 'package:flutter/material.dart';
import '../../../domain/models/coin.dart';
import '../../../currency/crypto_price_rand.dart';

class CoinList extends StatelessWidget {
  const CoinList({super.key, required this.coin, required this.onTap});

  final Coin? coin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        coin!.name!,
        style: const TextStyle(
          color: Color.fromARGB(255, 252, 252, 252),
        ),
      ),
      subtitle: Text(
        coin!.symbol!,
        style: const TextStyle(
          color: Color.fromARGB(255, 252, 252, 252),
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        child: Text(coin!.rank.toString()),
      ),
      trailing: Text(
        generateCryptoPrice(),
        style: const TextStyle(
          color: Colors.green,
          fontSize: 13,
        ),
      ),
    );
  }
}
