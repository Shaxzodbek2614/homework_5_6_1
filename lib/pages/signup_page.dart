import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';
import 'package:omework_5_6_1/pages/success.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9e6bb),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.l10n.royxatdan_otish,style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: context.l10n.ism
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: context.l10n.email
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: context.l10n.login
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: context.l10n.parol_tasdiqlash
              ),
            ),
            SizedBox(height: 35,),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
              }, child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(context.l10n.royxatdan_otish,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),),
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.l10n.allaqachon),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninPage()));
                }, child: Text(context.l10n.tizimga_kirish))
              ],
            )
          ],
        ),
      ),
    );
  }

}