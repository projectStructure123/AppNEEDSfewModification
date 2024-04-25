import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/home_controller.dart';

class home extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.menu,
          color: Color(0xffD3D1D8),),
        label: '',

      ),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on,
                color: Color(0xffD3D1D8)),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag,
                color: Color(0xff720D83)),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color: Color(0xffD3D1D8)),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Color(0xffD3D1D8)),
          label: '',
        ),

      ],
    ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text('ماذا تحب ان تطلب؟',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
             Icon(Icons.add,
             color:Color(0xff720D83)),
              SizedBox(
                width: 30.0,
              ),
              Container(
                height:50,
                width: 255,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xffEFEFEF),
                ) ,
                child: Stack
                  (children:[
                 Container(
                    alignment: Alignment.center ,
                      child: Text('البحث عن طعام او مطعم',
                 style: TextStyle(
                   color: Color(0xff9AA0B4),
                 ),     )
                 ),
          
          
                Container(
                  alignment: Alignment.centerRight,
                    child: Icon(Icons.search,
                      color: Color(0xff767F9D),
                    ),
          
          
                )
                  ]
                ),
              )

            ],

          ) ,
          SizedBox(
            height: 20.0,
          ),
             Container(
               height: 100,
               child: ListView.separated
                 (
                   scrollDirection: Axis.horizontal,
                   itemBuilder:(context, index )=>buildMenuItem(),
                   separatorBuilder:(context, index )=>SizedBox(
                     width: 10.0,
                   ) ,
                   itemCount:6),
             ),

            Row(
              children: [
                ElevatedButton.icon(onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_outlined),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  label: Text(' عرض الكل',
                    style:TextStyle(
                      color: Color(0xff720D83),
                    ),
                  )
                  ,
                ),
              SizedBox(
                width: 80.0,
              ),
              Text('مطاعم مفضلة',
              style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              ),
              )



              ],
            ),
           SizedBox(
             height: 15.0,
           ),
          Container(
            height:260,
            child: ListView.separated
              (
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index )=>buildFavRes(),
                separatorBuilder:(context, index )=>SizedBox(
                  width: 10.0,
                ) ,
                itemCount:6),
          ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ElevatedButton.icon(onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_outlined),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    label: Text(' عرض الكل',
                      style:TextStyle(
                        color: Color(0xff720D83),
                      ),
                    )
                    ,
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Text('طعام مفضل',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )



                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height:150,
                child: ListView.separated
                  (
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index )=>buildFavFood(),
                    separatorBuilder:(context, index )=>SizedBox(
                      width: 10.0,
                    ) ,
                    itemCount:6),
              ),

              ],
            ),
          ),
        ),
    );
  }
}
Widget buildMenuItem() => Stack(
    children: [

      Container(
          height: 80,
          child: Image.asset("images/506d844aed80e0529ec7ce4200c9b5a38bf752fer1-1000-667v2_uhq.jpg")),

      Container(
        alignment:Alignment.topCenter ,
        child: Text('بيتزا',
          style: TextStyle(
            fontSize: 9.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
);
Widget buildFavRes()=>Row(
  children: [
    Container(
      height: 250,
      child: Stack(
        children: [
          Container(
              alignment: Alignment.topLeft,
              height:220,
              child: Image.asset("images/394401038_810898227504306_4320524607621834285_n-1024x1024.jpeg")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.favorite,
              color: Colors.white,),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              Text('مطعم برجر ريبابلك',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),

              Text('شارع مصر والسودان- حدائق القبه',
                style: TextStyle(
                  fontSize:8.0 ,
                  color: Color(0xff8C8A9D) ,
                ),
              ),

            ],
          ),

        ],
      ),
    ),
  ],
);
Widget buildFavFood()=>Row(
  children: [
    Container(
      height: 130,
      child: Stack(
        children: [
          Container(
              alignment: Alignment.topLeft,
              height:100,
              child: Image.asset("images/506d844aed80e0529ec7ce4200c9b5a38bf752fer1-1000-667v2_uhq.jpg")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.favorite,
              color: Colors.white,),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              Text('بيتزا',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Text('illy cafe',
                style: TextStyle(
                  fontSize:8.0 ,
                  color: Color(0xff8C8A9D) ,
                ),
              ),

            ],
          ),

        ],
      ),
    ),
  ],
);