import 'package:flutter/material.dart';

class CryptoApp extends StatefulWidget {
  @override
  State<CryptoApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CryptoApp> {
  List<Widget> listImage = [
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/bitcoin.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/etherium.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/solana.png', width: 50, height: 50)),
  ];

  List<String> listText = ['Bitcoin', 'Etherium', 'Solana'];

  List<String> listTicket = ['BTC', 'ETH', 'SOL'];

  List<double> listGain = [-1.5, -2.5, -5];

  List<double> listPrice = [
    34388.32,
    2326.32,
    89.08,
  ];

  List<double> listTotal = [0.01, 0.1, 1];

  void _changeSomething() {
    setState(() {
      //Some state changing stuff
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Container(
          child: Text(
            'Crypto App UI',
            style: const TextStyle(
                fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _changeSomething,
            icon: const Icon(Icons.settings_rounded, color: Colors.grey),
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          listImage[index],
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listText[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${listGain[index]} %',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${listPrice[index]}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${listTotal[index]} ${listTicket[index]}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
        selectedItemColor: Colors.redAccent,
      ),
    );
  }
}
