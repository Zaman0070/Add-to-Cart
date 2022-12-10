import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f4f9),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Image.asset('assets/images/done.png',height: 180,),
            ),
            SizedBox(height: 40,),
            const Text(''
                'Order Success',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,letterSpacing: 1),),
            SizedBox(height: 20,),
            const Text(''
                'Your order will be sent to your\naddress, Thanks for order.',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,letterSpacing: 1,color: Colors.grey),),
            Spacer(),
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
                  child: Text('Back to Home',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
