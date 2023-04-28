import 'package:flutter/material.dart';

class MarketApp extends StatefulWidget {
  const MarketApp({Key? key}) : super(key: key);
  static final String id = 'market_app';
  @override
  State<MarketApp> createState() => _MarketAppState();
}

class _MarketAppState extends State<MarketApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cars', style: TextStyle(color: Colors.deepOrange, fontSize: 28),),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none_outlined, color: Colors.deepOrange, weight: 30,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart, color: Colors.deepOrange, weight: 30,),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _categories(true,'All'),
                  _categories(false,'Red'),
                  _categories(false,'Blue'),
                  _categories(false,'Green'),
                  _categories(false,'Yellow'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child:Container(
              child: ListView(
                children: [
                  _itemProduct(image: 'assets/images/im_car1.jpg', type: 'Electric', name: 'PDP Car', price: '100\$'),
                  _itemProduct(image: 'assets/images/im_car2.jpg', type: 'Electric', name: 'PDP Car', price: '100\$'),
                  _itemProduct(image: 'assets/images/im_car3.jpg', type: 'Electric', name: 'PDP Car', price: '100\$'),
                  _itemProduct(image: 'assets/images/im_car4.png', type: 'Electric', name: 'PDP Car', price: '100\$'),
                  _itemProduct(image: 'assets/images/im_car5.jpg', type: 'Electric', name: 'PDP Car', price: '100\$'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _categories(bool select,String name){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: select? Colors.deepOrange : Colors.white
        ),
        child: Center(
          child: Text(name, style: TextStyle(
            color: Colors.black, fontSize: select? 22:17
          ),),
        ),
      ),
    );
  }
  Widget _itemProduct({image, type, price, name}){
    return Container(
      padding: EdgeInsets.all(20),
      height: 250,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                offset: Offset(0,10)
            )
          ],

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name, style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(type, style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 20,),
                Text(price, style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          // #Icon favorite
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0,10)
                )
              ]
            ),
            child: Center(
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            )
          )
        ],
      ),
    );
  }
}
