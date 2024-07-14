import 'package:card_swiper/card_swiper.dart';
import 'package:favorite/config/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var banner;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      //
      body: Column(
        children: [
          SizedBox(
              height: 250,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    "http://localhost:3000/uploads/1720843740446-678057834.webp",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 10,
                itemWidth: 300.0,
                layout: SwiperLayout.STACK,
              ))
        ],
      ),
    );
  }
}
