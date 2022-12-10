import 'package:flutter/material.dart';
import 'package:flutter_tutorial/order_details.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f4f9),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f4f9),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,),
            Text('My Cart',style: TextStyle(color: Colors.black),),
            Image.asset('assets/images/profile.png',height: 40,),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      color: Color(0xffd6d0f3),
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/images/shirt.png',),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('Polo Shirt For Men',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                              SizedBox(height: 6,),
                              Text('Color-Red',style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),),
                              SizedBox(height: 6,),
                              Text('\$30.00',style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 85,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap:(){
                                setState(() {
                                  count++;
                                });
                              },
                                child: Icon(Icons.add,color: Colors.redAccent,size: 20,)),
                            SizedBox(height: 6,),
                            Text('$count',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                            InkWell(
                                onTap:(){
                                 setState(() {
                                   count--;
                                 });
                                },
                                child: Icon(Icons.minimize,color: Colors.redAccent,size: 20,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        color: Color(0xffd6d0f3),
                      ),
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/images/bag.png',),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('Scott Bag',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                              SizedBox(height: 6,),
                              Text('Color-Black',style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),),
                              SizedBox(height: 6,),
                              Text('\$42.00',style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 85,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count++;
                                  });
                                },
                                child: Icon(Icons.add,color: Colors.redAccent,size: 20,)),
                            SizedBox(height: 6,),
                            Text('$count',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count--;
                                  });
                                },
                                child: Icon(Icons.minimize,color: Colors.redAccent,size: 20,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        color: Color(0xffd6d0f3),
                      ),
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/images/shose.png',),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('Pro Tour Shoes',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                              SizedBox(height: 6,),
                              Text('Color-Blue',style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),),
                              SizedBox(height: 6,),
                              Text('\$150.00',style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 85,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count++;
                                  });
                                },
                                child: Icon(Icons.add,color: Colors.redAccent,size: 20,)),
                            SizedBox(height: 6,),
                            Text('$count',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count--;
                                  });
                                },
                                child: Icon(Icons.minimize,color: Colors.redAccent,size: 20,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        color: Color(0xffd6d0f3),
                      ),
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/images/headphone.png',),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('T250 Headphone',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                              SizedBox(height: 6,),
                              Text('Color-brown',style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),),
                              SizedBox(height: 6,),
                              Text('\$98.00',style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 85,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count++;
                                  });
                                },
                                child: Icon(Icons.add,color: Colors.redAccent,size: 20,)),
                            SizedBox(height: 6,),
                            Text('$count',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    count--;
                                  });
                                },
                                child: Icon(Icons.minimize,color: Colors.redAccent,size: 20,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 85,),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text('Total',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                Text('\$320',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),

              ],
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderDetails()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfffc4e54)
                ),
                child:const Center(
                  child: Text('Order Now',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
