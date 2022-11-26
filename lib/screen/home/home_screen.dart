import 'package:cloth_e_commerce/models/dress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Dress> _dressList = <Dress>[
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/09/Coca-Cola-Printed-Baby-Frock-Set-300x300.jpg',
        name: 'Coca Cola',
        price: 380.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/09/Baby-Frock-Dresses-Best-Price-in-Bangladesh-300x300.jpg',
        name: 'Baby Frock',
        price: 300.00),
  ];

  final List<Dress> _leggingsList = <Dress>[
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/08/Pink-Colour-Baby-Girls-Leggings-in-Bangladesh-300x300.jpg',
        name: 'Pink',
        price: 380.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/09/Baby-Frock-Dresses-Best-Price-in-Bangladesh-300x300.jpg',
        name: 'Baby Frock',
        price: 300.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/08/Khaki-Colour-Cotton-Baby-Girls-Leggings-in-BD-300x300.jpg',
        name: 'Khaki',
        price: 300.00)
  ];

  final List<Dress> _hoodiesList = <Dress>[
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/10/Raglan-Hoodie-Navy-Blue-Sleeve-With-White-Color-Front-300x300.jpg',
        name: 'Navy Whate',
        price: 380.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/10/Hoodie-Zipup-Full-SLV-Front-Navy-Blue-300x300.jpg',
        name: 'Navy Blue',
        price: 300.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/10/Hoodie-Zipup-Full-SLV-Front-Grey-300x300.jpg',
        name: 'Grey',
        price: 300.00),
    const Dress(
        imgUrl:
            'https://bdmanja.com/wp-content/uploads/2021/10/51KzrFs38AL._AC_UX385_.jpg',
        name: 'Full Sleeve',
        price: 300.00)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Column(
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
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    // Box Widget
                    const _HomeBannerWidget(),
                    _DressListWidget(
                        titleTxt: 'Frock',
                        iconUrl:
                            'https://cdn-icons-png.flaticon.com/512/1785/1785375.png',
                        dressList: _dressList),
                    _DressListWidget(
                        titleTxt: 'Leggings',
                        iconUrl:
                            'https://cdn-icons-png.flaticon.com/512/93/93313.png',
                        dressList: _leggingsList),
                    _DressListWidget(
                        titleTxt: 'Hoodies',
                        iconUrl:
                            'https://cdn-icons-png.flaticon.com/512/2390/2390082.png',
                        dressList: _hoodiesList),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeBannerWidget extends StatelessWidget {
  const _HomeBannerWidget({
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

class _DressListWidget extends StatelessWidget {
  final String titleTxt;
  final String iconUrl;
  final List<Dress> dressList;

  const _DressListWidget(
      {super.key,
      required this.titleTxt,
      required this.iconUrl,
      required this.dressList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              titleTxt,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.network(
              iconUrl,
              height: 15,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 145,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dressList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                dressList[index].imgUrl,
                                width: 90,
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange.shade100,
                          ),
                          child: Text(
                            dressList[index].name,
                            style: TextStyle(color: Colors.orange.shade800),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Price: ${dressList[index].price}")
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
