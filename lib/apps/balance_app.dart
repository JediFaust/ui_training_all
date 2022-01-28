import 'package:flutter/material.dart';

class BalanceApp extends StatefulWidget {
  @override
  State<BalanceApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BalanceApp> {
  int _selectedIndex = 0;

  final List<String> _listTodo = [
    'Дом',
    'Покупки',
    'Транспорт',
    'Здоровье',
    'Фитнес',
    'Счета',
    'Ресторан',
  ];

  final List<String> _descriptions = [
    'Продукты',
    'Одежда',
    'Такси',
    'Лечение',
    'Тренировки',
    'Коммунальные',
    'Ужин',
  ];

  final List<double> _spendings = [
    321,
    574,
    124,
    756,
    324,
    726,
    325,
  ];

  final List<Widget> _icons = [
    const Icon(Icons.home, color: Colors.redAccent),
    const Icon(Icons.money, color: Colors.redAccent),
    const Icon(Icons.local_taxi, color: Colors.redAccent),
    const Icon(Icons.add, color: Colors.redAccent),
    const Icon(Icons.sports, color: Colors.redAccent),
    const Icon(Icons.monetization_on_outlined, color: Colors.redAccent),
    const Icon(Icons.restaurant_rounded, color: Colors.redAccent),
  ];

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balance App UI'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // Main column, everything in here
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Баланс',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '\$1200.94',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_left_rounded)),
                const Text(
                  'January 2022',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right_rounded)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _listTodo.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: _icons[index],
                    title: Text(
                      _listTodo[index],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${_spendings[index]}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          _descriptions[index],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.waterfall_chart),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
