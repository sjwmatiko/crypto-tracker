import 'package:flutter/material.dart';
import 'package:maicrypto/src/controllers/coin_controller.dart';
import 'package:maicrypto/src/views/home_page/components/coin_list.dart';
import '../detail_page/detail_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CoinController coinController = CoinController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 18, 18),
        elevation: 0, // Remove the shadow below the app bar
        title: Text(
          'Cryptocurrencies'.toUpperCase(),
          style: const TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5, // Add some letter spacing for a stylish look
          ),
        ),
        centerTitle: true, // Center the title within the app bar
        actions: [
          IconButton(
            onPressed: () {
              // Add action functionality here
            },
            icon: const Icon(
              FontAwesomeIcons.bitcoin,
              size: 28,
              color: Colors.orange,
            ),
          ),
        ],
        actionsIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 252, 252, 252),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: FutureBuilder(
              future: coinController.getCoins(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final coin = snapshot.data![index];
                      return CoinList(
                        coin: coin,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              id: coin.id!,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
