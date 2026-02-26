import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/inherited_locale.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/signup_page.dart';

import '../core/app_route.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  List<String> list = ["uz","en"];
  String selected = "uz";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9e6bb),
        actions: [

        DropdownButton<String>(
          value: selected,
          icon: const Icon(Icons.language),
          onChanged: (String? newValue) {
            if(newValue=="uz"){
              context.local.value = InheritedLocale.uzbLocale;
            }else if(newValue=="en"){
              context.local.value = InheritedLocale.englishLocale;
            }
            setState(() {
              selected = newValue!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Text(city),
            );
          }).toList(),
        ),
          SizedBox(width: 10,),
      ],),
      backgroundColor: Color(0xfff9e6bb),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.l10n.tizimga_kirish,style: TextStyle(fontSize: 30,color: Colors.indigo),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: context.l10n.email,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: context.l10n.login,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                context.go(Routes.products);
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ), child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(context.l10n.tizimga_kirish,style: TextStyle(color: Colors.white),),
              ),),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              child: OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ), child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(context.l10n.ikkinchi_tugma,style: TextStyle(color: Colors.indigo),),
              ),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.l10n.dont_have_account),
                TextButton(onPressed: (){
                  context.go(Routes.signup);
                }, child: Text(context.l10n.royxatdan_otish,style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),))
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
