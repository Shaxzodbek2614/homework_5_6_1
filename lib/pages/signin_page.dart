import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/signup_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9e6bb),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign In",style: TextStyle(fontSize: 30,color: Colors.indigo),),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ), child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("Sign In",style: TextStyle(color: Colors.white),),
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
                child: Text("Sign in with Facebook",style: TextStyle(color: Colors.indigo),),
              ),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),))
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
