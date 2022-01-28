import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _travelBody(),
    );
  }
}

List<String> _cityName = ['BISHKEK', 'OSH', 'TALAS'];

List<String> _cityImage = [
  'https://proprikol.ru/wp-content/uploads/2020/08/kartinki-kyrgyzstan-36.jpg',
  'https://i.mycdn.me/i?r=AzEPZsRbOZEKgBhR0XGMT1RkfToLKlya3HSo6c0oZA_dCqaKTM5SRkZCeTgDn6uOyic',
  'http://www.photo.kg/uploads/posts/2016-07/1469074981_img_3996.jpg',
];

Widget _travelBody() {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  Text(
                    'Путешествуйте',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Почувствуйте прилив энергии',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Мы поможем вам исследовать, сравнить, и забронировать впечатления - все в одном месте.',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Куда хотите поехать?',
                suffixIconColor: Colors.blue,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 500,
              width: 300,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image(
                            image: NetworkImage(_cityImage[index]),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _cityName[index],
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                                width: 100,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    ),
  );
}
