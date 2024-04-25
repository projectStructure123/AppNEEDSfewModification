import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/food_details_controller.dart';

class foodDetails extends StatelessWidget {


  final FoodDetailsController controller = Get.put(FoodDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
        
            children: [
        
               Stack(
                   children: [ Image.asset("images/175933.jpg"),
                     BackButton(
                       color: Colors.white,
                     ),
        
                     Container(
                       alignment: AlignmentDirectional.bottomEnd,
                         child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite),
                           color: Color(0xff720D83),
                         )
                     )
               ]
               ),
        
              Container(
                alignment: Alignment.topRight,
                child: Text('قهوه فرنساوي',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                  child: Text('50.00ج.م - 30.00ج.م ')),
              Row(
                children: [
                  CircleAvatar(
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.remove,),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),

                  Text('01'),
                  SizedBox(
                    width: 8.0,
                  ),
                  CircleAvatar(
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.add,),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topRight,
                  child: Text('بن مع كريمه والسكر',
                    style:TextStyle(
                      color: Colors.grey,
                    ),)),
              Container(
                alignment: Alignment.topRight,
                child: Text('الحجم',
                  style: TextStyle(
                      fontSize: 20.0,
                  ),
                ),
              ),
                 SizedBox(
                   height: 5.0,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {},
                        child: Text('كبير',
                          style:TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff720D83)
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton(onPressed: () {},
                        child: Text('صغير')),
                  ],
                ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text('الاضافات',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
                Row(
                  children: [
                    Text('10.0ج.م'),
                    SizedBox(width:170 ,),
                    Text('حليب محلي'),
                    Radio(value: 1, groupValue: 1, onChanged: (value){}),
                  ],
                ),
              Row(
                children: [
                  Text('10.0ج.م'),
                  SizedBox(width:170 ,),
                  Text('طعم كراميل'),
                  Radio(value: 2, groupValue: 2, onChanged: (value){}),
                ],
              ),
              Row(
                children: [
                  Text('10.0ج.م'),
                  SizedBox(width:210 ,),
                  Text('جبن'),
                  Radio(value: 3, groupValue: 3, onChanged: (value){}),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('7.00ج.م'),
                  SizedBox(
                    width: 220.0,
                  ),
                  Text('الاجمالي',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight:FontWeight.bold,
        
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
        
                  ElevatedButton.icon(onPressed: () {},
                    icon: Icon(Icons.shopping_basket),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color(0xff720D83),
                    ),
                    label: Text('أضف الي السلة',
                      style:TextStyle(
                        color: Colors.white,
                      ), )
                    ,
                 ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Navigates to the previous screen.
onTapArrowLeft() {
  Get.back();
}