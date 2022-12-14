import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  final String titleTxt;
  final String imgUrl;
  double price;
  DetailsScreen(
      {super.key,
      required this.titleTxt,
      required this.imgUrl,
      this.price = 0.0});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late PaletteColor _colorAppBar = PaletteColor(Colors.amber.shade400, 2);
  late PaletteColor _colorBody = PaletteColor(Colors.transparent, 2);

  final List<String> _dressList = [
    'https://bdmanja.com/wp-content/uploads/2021/09/Coca-Cola-Printed-Baby-Frock-Set-300x300.jpg',
    'https://bdmanja.com/wp-content/uploads/2021/09/Baby-Frock-Dresses-Best-Price-in-Bangladesh-300x300.jpg',
    'https://bdmanja.com/wp-content/uploads/2021/08/Pink-Colour-Baby-Girls-Leggings-in-Bangladesh-300x300.jpg',
    'https://bdmanja.com/wp-content/uploads/2021/10/Raglan-Hoodie-Navy-Blue-Sleeve-With-White-Color-Front-300x300.jpg'
  ];

  @override
  void initState() {
    super.initState();
    _getPaletteColorFormImage();
  }

  _getPaletteColorFormImage() async {
    final PaletteGenerator generator =
        await PaletteGenerator.fromImageProvider(
      NetworkImage(widget.imgUrl),
      size: const Size(200, 100),
    );

    _colorAppBar =
        generator.dominantColor ?? PaletteColor(Colors.amber.shade400, 2);
    _colorBody =
        generator.dominantColor ?? PaletteColor(Colors.transparent, 2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200.0,
              backgroundColor: _colorAppBar.color,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  widget.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100.0,
                  color: _colorBody.color,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.titleTxt,
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$ ${widget.price}",
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.black38),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                            size: 40.0,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange.shade100),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "6M - 12M",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Age",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                          Container(
                            height: 60.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange.shade100),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Color",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                          Container(
                            height: 60.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange.shade100),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "In Stock",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "10 pcs",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "About Dress",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Similar Products:",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _similarGridItems(_dressList)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          label: Text(
            "Add to cart",
            style: TextStyle(fontSize: 20, color: Colors.orange.shade200),
          ),
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.orange.shade200,
          ),
          backgroundColor: Colors.black87,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  GridView _similarGridItems(List<String> dressUrls) {
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8
        ),
        itemCount: dressUrls.length,
        itemBuilder: ((context, index) {
          return SizedBox(
            height: 800,
            width: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  dressUrls[index],
                  width: 90,
                  fit: BoxFit.fitWidth,
                )),
          );
        }));
  }
}
