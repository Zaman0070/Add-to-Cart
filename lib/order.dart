import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F4F9),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Spacer(),
            Center(child: Image.asset('assets/images/done.png',height: 180,)),
            SizedBox(height: 40,),
           const Text('Order Success',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              letterSpacing: 1
            ),),
            SizedBox(height: 20,),
          const  Text('Your order will be sent to your\naddress, Thanks for order.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),),
            Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Order()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFC4E54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Center(
                  child: Text('Back to Home',style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,
                      color: Colors.white),),),
              ),
            ), SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
