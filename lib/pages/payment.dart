import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/checkout_page.dart';

import '../core/app_route.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 2),
          child: Container(
            color: Colors.grey,
            width: double.infinity,
            height: 1,
          ),
        ),
          title: Text(context.l10n.payment, style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),),),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 50,
                          child: Image.asset("assets/images/img_8.png")),
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff3d3dc2),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 50,
                          child: Image.asset("assets/images/img_9.png")),
                    ), Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          width: 100,
                          height: 50,
                          child: Image.asset("assets/images/img_10.png")),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: context.l10n.ism
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: context.l10n.karta_raqam
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: context.l10n.vaqt
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "CVC"
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(context.l10n.payment_matn),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              context.go(Routes.checkout);
            },
            child: Text(context.l10n.next,style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
    );
  }
}
