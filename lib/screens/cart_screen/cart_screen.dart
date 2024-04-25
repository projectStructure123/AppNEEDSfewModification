import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_routes.dart';
import 'controller/cart_controller.dart';

class Cart extends StatelessWidget {
  final CartController controller = Get.put(CartController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: BackButton(
         color: Colors.black,
       ),

       title: Center(
         child: Text('عربة التسوق',
           style: TextStyle(
             fontSize: 18.0,
           ),
         ),
       ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
             ListView.separated
                (
               shrinkWrap: true,
                  itemBuilder:(context, index )=>buildShopItem(),
                  separatorBuilder:(context, index )=>SizedBox(
                    height: 10.0,
                  ) ,
                  itemCount:5),


            SizedBox(
              height: 120.0,
            ),
            Row(
              children: [
                Text('275 ج.م',
                  style: TextStyle(
                      color:Color(0xff720D83)
                  ),),
                SizedBox(
                  width: 230.0,
                ),
                Text('الاجمالي',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('0.00 ج.م',
                style: TextStyle(
                color:Color(0xff720D83)
                ),
                ),
                SizedBox(
                  width: 220.0,
                ),
                Text('الاضافات',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('275 ج.م',
                  style: TextStyle(
                      color:Color(0xff720D83)
                  ),),
                SizedBox(
                  width: 230.0,
                ),
                Text('المجموع',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
           Container(
             height: 55.0,
             width: 245.0,
             child: IconButton(onPressed: (){
               Get.toNamed(AppRoutes.checkout);
             },
                 icon: Text('الدفع',
                   style: TextStyle(
                    color:Colors.white,
                     fontSize: 15.0,
                   ),
                 ),
               style: IconButton.styleFrom(
                 backgroundColor:Color(0xff720D83),
               ),
             ),
           ),
          ],
        ),
      ),
    ),
    );
  }
}
Widget buildShopItem()=>Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    CircleAvatar(
      child: IconButton(onPressed: (){},
        icon: Icon(Icons.add,),
      ),
    ),
    SizedBox(
      width: 5.0,
    ),
    Text('01'),
    SizedBox(
      width: 5.0,
    ),
    CircleAvatar(
      child: IconButton(onPressed: (){},
        icon: Icon(Icons.remove,),
      ),
    ),

    Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children :[ Text('مطعم كنتاكي',
          style:TextStyle(
            fontSize: 10.0,
            color: Colors.grey,
          ),
        ),
          Text('شاورما لحمة',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
    ),
    Container(
        alignment: Alignment.topRight,
        height: 60.0,
        child: Image.asset("images/00000000.jpg")
    ),
  ],
);