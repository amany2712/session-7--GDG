import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:session7_gdg/constants/app_colors.dart';
import 'package:session7_gdg/models/covers_model.dart';
import 'package:session7_gdg/models/products_model.dart';
import 'package:session7_gdg/screens/checkout_screen.dart';
import 'package:session7_gdg/widgets/custom_appbar.dart';
import 'package:session7_gdg/widgets/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppbar(isDark: true),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/text/10.svg"),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/text/October.svg"),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/text/Collection.svg"),
          ),

          Padding(
            padding: EdgeInsets.only(left: 6, right: 6),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Stack(
                    children: [
                      Image.asset("assets/home/hijab.png"),
                      Positioned(
                        top: 320,
                        left: 180,
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          "assets/text/10.svg",
                          width: 243,
                          height: 175,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CheckoutScreen(
                                  name: product.name,
                                  image: product.image,
                                  description: product.description,
                                  price: product.price,
                                );
                              },
                            ),
                          );
                        },
                        child: AppProduct(
                          name: product.name,
                          description: product.description,
                          price: product.price,
                          image: product.image,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 4),
                  Text(
                    "you may also like".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    radius: BorderRadius.circular(8),
                    endIndent: 50,
                    indent: 50,
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: height * 0.5,
                    margin: EdgeInsets.all(20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: covers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                covers[index].image,
                                width: 280,
                                height: 330,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 4),
                              Text(
                                covers[index].title.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Ionicons.logo_twitter, color: Colors.black),
                              SizedBox(width: 30),
                              Icon(Ionicons.logo_facebook, color: Colors.black),
                              SizedBox(width: 30),
                              Icon(
                                Ionicons.logo_instagram,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                            radius: BorderRadius.circular(8),
                            endIndent: 50,
                            indent: 50,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "support@openui.design",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "+60 825 876",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "08:00 - 22:00 - Everyday",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(height: 4),
                          SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "About",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 32),
                              Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 32),
                              Text(
                                "Blog",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Text(
                          "Copyright© OpenUI All Rights Reserved.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
