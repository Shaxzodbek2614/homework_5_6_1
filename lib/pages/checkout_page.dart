import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/finally_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 2),
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: 1,
        ),
      ),
        title: Text("Checkout", style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping Address",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                Text("Change",style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Berlin,str.Kamolot 10 \n110114 Berlin, Germany",style: TextStyle(color: Colors.grey),),
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                Text("Change",style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20),
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                width: 80,
                height: 50,
                child: Image.asset("assets/images/img_11.png")),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("**** **** **** 5708",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Gabriel Chapman\n06/23",style: TextStyle(color: Colors.grey),),
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Review Products",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffe5f6f5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/images/img_3.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffd3f1fd),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/images/img_1.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xfff9e6bb),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/images/img_2.png"),
                )
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Finally()));
            },
            child: Container(
              margin:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    "Place Order",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ), Text(
                    "\$1079",
                    style:
                    const TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
