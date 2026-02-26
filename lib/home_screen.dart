import 'package:flutter/material.dart';
import 'package:session7_gdg/app_images.dart';
import 'package:session7_gdg/coversmodel.dart';
import 'package:session7_gdg/product.dart';
import 'package:session7_gdg/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         leading: Icon(Icons.menu,color: Colors.white,),
        title: Column(
          children: [
            Text("Open",style: TextStyle(fontSize: 25),),
            Text("Fashion",style: TextStyle(fontSize: 25),)
          ],
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.shopping_bag)
        ],
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
          size : 25
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        actionsPadding: EdgeInsets.only(right: 6),
        
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(Assets.images10)
            ),
            Positioned(
            top: 80,
            left: 10,
            right: 0,
            child: Image.asset(Assets.imagesOctober)
            ),
             Positioned(
            top: 140,
            left: 10,
            right: 0,
            child: Image.asset(Assets.imagesCollection)
            ),
            Padding(
              padding:  EdgeInsets.only(left: 6,right: 6),
              child: SingleChildScrollView(
                child:Column(
                  children: [
                    SizedBox(height: 200,),
                    Stack(
                      children: [
                        Image.asset(Assets.imagesImage20),
                        Positioned(
                          top: 400,
                          left: 240,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(Assets.images10)
                          )
                      ],
                    ),
                    SizedBox(height: 32,),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.4
                        ),
                       itemBuilder: (context,index){
                        return products[index];
                       }
                       ),
                       SizedBox(height: 4,),
                       Text("you may also like".toUpperCase(),
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 2
                       ),),
                       SizedBox(height: 4,),
                       Divider(
                        color: Colors.white,
                        thickness: 1,
                        radius: BorderRadius.circular(8),
                        endIndent: 50,
                        indent: 50,
                       ),
                        SizedBox(height: 16,),
                        Container(
                          height: height*0.4,
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
                                    Image.asset(covers[index].image,
                                    width: 280,
                                    height: 330,
                                    fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 4,),
                                    Text(covers[index].name.toUpperCase(),
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 2,
                                
                                    ),)
                                
                                    
                                  ],
                                ),
                              );
                            },
                            ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/Twitter.png"),
                                    SizedBox(width: 32,),
                                    Image.asset("assets/images/Instagram.png"),
                                    SizedBox(width: 32,),
                                    Image.asset("assets/images/YouTube.png"),
                            
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(
                                                    color: Colors.black,
                                                    thickness: 1,
                                                    radius: BorderRadius.circular(8),
                                                    endIndent: 50,
                                                    indent: 50,
                                                   ),
                                                   SizedBox(height: 16,),
                                                   Text("support@openui.design",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
                                                   SizedBox(height: 4,),
                                                   Text("+60 825 876",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
                                                   SizedBox(height: 4,),
                                                   Text("08:00 - 22:00 - Everyday",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
                                                   SizedBox(height: 4,),
                                                   SizedBox(height: 32,),
                                                   Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text("About",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
                                                    SizedBox(width: 32,),
                                                   Text("Contact",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
                                                   SizedBox(width: 32,),
                                                   Text("Blog",
                                                   style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                   ),),
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
                                                        child: Text("Copyright© OpenUI All Rights Reserved.",
                                                        style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14
                                                                                                           ),
                                                        ),
                                                      ),
                                                    ),
                                                   )

                        
                  ],
                ),
              ),
            )

          
        ],
      ),

    );
  }
}