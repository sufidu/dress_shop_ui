import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/menu.svg',
                    width: 20,
                  ),
                  SizedBox(
                      width: 35,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2015/03/04/22/35/avatar-659651_960_720.png'),
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Box Widget
              const HomeBannerWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 140, right: 10),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orangeAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Hello",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tecognize",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Ready for an amazing and lucky experience")
              ],
            ),
          ),
          Image.asset(
            "assets/images/modern_baby.png",
          ),
        ],
      ),
    );
  }
}
