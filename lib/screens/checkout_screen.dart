import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session7_gdg/constants/app_colors.dart';
import 'package:session7_gdg/widgets/custom_appbar.dart';

class CheckoutScreen extends StatefulWidget {
  final String name;
  final String image;
  final double price;
  final String description;
  const CheckoutScreen({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: CustomAppbar(isDark: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: Text("CHECKOUT", style: TextStyle(fontSize: 30))),
            SizedBox(height: 30),
            Row(
              children: [
                Image.asset(widget.image, width: 130),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name, style: TextStyle(fontSize: 18)),
                      SizedBox(height: 10),
                      Text(widget.description, style: TextStyle(fontSize: 13)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: Center(child: Icon(Icons.add, size: 14)),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(quantity.toString()),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: Center(
                                child: Icon(Icons.remove, size: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$${widget.price * quantity}",
                        style: TextStyle(
                          fontSize: 13,
                          color: const Color.fromARGB(255, 174, 105, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(color: Colors.grey.withOpacity(0.2)),
            ListTile(
              leading: SvgPicture.asset('assets/svgs/Voucher.svg'),
              title: Text("Add Promo Code"),
            ),
            Divider(color: Colors.grey.withOpacity(0.2)),
            ListTile(
              leading: SvgPicture.asset(
                "assets/svgs/Door to Door Delivery.svg",
              ),
              title: Text("Delivery"),
              trailing: Text("Free"),
            ),
            Divider(color: Colors.grey.withOpacity(0.2)),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Price:", style: TextStyle(fontSize: 18)),
                Text(
                  "\$${widget.price * quantity}",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 174, 105, 1),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(),
          ),
          onPressed: () {},
          child: Text("Checkout"),
        ),
      ),
    );
  }
}
