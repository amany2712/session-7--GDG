import 'package:flutter/material.dart';
import 'package:session7_gdg/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        // actionsIconTheme: IconThemeData(
        //   color: Colors.red
        // ),
        foregroundColor: Colors.white,
        centerTitle: true,
        actionsPadding: EdgeInsets.only(right: 6),
        
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.black,
      //   child: ListView(
      //     children: [
      //       DrawerHeader(child: Image.asset(Assets.images10)),
      //       ListTile(
      //         title: Text("Home",style: TextStyle(color: Colors.white),),
      //         leading: Icon(Icons.home,color: Colors.white,),
      //         subtitle: Text("hello"),
      //       ),
      //        ListTile(
      //         title: Text("Profile",style: TextStyle(color: Colors.white),),
      //         leading: Icon(Icons.person,color: Colors.white,),
      //       ),
      //        ListTile(
      //         title: Text("Settings",style: TextStyle(color: Colors.white),),
      //         leading: Icon(Icons.settings,color: Colors.white,),
      //       )
      //     ],
      //   ),
      // ),
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
              child: Column(
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
                  )
                ],
              ),
            )

          
        ],
      ),

    );
  }
}