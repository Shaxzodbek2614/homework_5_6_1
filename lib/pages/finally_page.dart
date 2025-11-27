import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';

class Finally extends StatelessWidget {
  const Finally({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Congratulation",
                  style: TextStyle(fontSize: 38, color: Colors.indigo),
                ),
                Text(
                  "Your account has been",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                Text(
                  "successfully created ",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
                }, child: Text("Continue shopping"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),),
              )),
        ],
      ),
    );
  }
}
