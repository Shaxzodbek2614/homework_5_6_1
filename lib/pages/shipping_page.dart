import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/payment.dart';

import '../core/app_route.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  String selectedCity = 'Germany';

  final List<String> countries = [
    'Germany',
    'Uzbekistan',
    'Spain',
    'Russia',
    'USA',
    'France',
  ];
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
      title: Text(context.l10n.yetkazish_adress,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              isExpanded: true,
              menuWidth: double.infinity,
              value: selectedCity,
              icon: const Icon(Icons.arrow_drop_down),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCity = newValue!;
                });
              },
              items: countries.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: context.l10n.town_city
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: context.l10n.pochta_index
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: context.l10n.kocha
              ),
            ),
            SizedBox(height: 20,),
            Text(context.l10n.matn,style: TextStyle(fontSize: 12,color: Colors.grey),),
            Text(context.l10n.matn,style: TextStyle(fontSize: 12,color: Colors.grey),),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                context.go(Routes.payment);
              }, child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(context.l10n.next,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),),
            ),
          ],
        ),
      ),

    );
  }
}
