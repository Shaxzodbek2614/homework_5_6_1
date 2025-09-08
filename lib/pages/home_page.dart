import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/products_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/img.png",fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Center(child: Text("SHOPIN",style: TextStyle(fontSize: 50,letterSpacing: 20,color: Colors.indigo,fontWeight: FontWeight.bold),)),
              Column(
                children: [
                  Center(child: Text("Amazing shopping",style: TextStyle(fontSize: 35,color: Colors.indigo),)),
                  Center(child: Text("Experience a new way\nof shopping",style: TextStyle(fontSize: 20,color: Colors.indigo,),)),
                ],
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 50,right: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
                }, child: Text("Explore")),
              )

            ],
          )
        ],
      ),
    );
  }
}
