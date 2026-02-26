import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';

import '../core/app_route.dart';

class Success extends StatelessWidget {
  const Success({super.key});

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
                  context.l10n.tabriklayman,
                  style: TextStyle(fontSize: 38, color: Colors.indigo),
                ),
                Text(
                  context.l10n.your_account,
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                Text(
                  context.l10n.successfully_created,
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
              context.go(Routes.signin);
            }, child: Text(context.l10n.tizimga_kirish),style: ElevatedButton.styleFrom(
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
