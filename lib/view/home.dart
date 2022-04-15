import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/model/product.dart';

import 'about.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [
      Product(name: "Apple", price: "340"),
      Product(name: "Apple", price: "340"),
      Product(name: "Apple", price: "340"),
      Product(name: "Apple", price: "340"),
      Product(name: "Apple", price: "340"),
    ];
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(() => const AboutView());
                  },
                  title: const Text("About Page"),
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text("Home Page"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: Get.size.width,
                      height: 250,
                      child: Image.network(
                          "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.favorite, color: Colors.white)),
                    ),
                    Positioned(
                        bottom: 1,
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            // color: Colors.yellow,
                            width: Get.size.width,
                            child: const Center(
                                child: Text(
                              "Cheese Burger",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            )))),
                  ],
                ),
                const ListTile(
                  title: Text(
                    "Today's Special",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("What are you feeling to eat today?"),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(products[index].name),
                        subtitle: Text(products[index].price),
                      );
                    })
              ],
            ),
          )),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final int price;
  const ProductCard({
    Key? key,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            left: 10,
            top: 10,
            child: Text(
              "Rs. $price",
              style: TextStyle(color: Colors.white),
            ))
      ]),
    );
  }
}
