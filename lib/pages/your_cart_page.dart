import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/shipping_page.dart';
import 'package:provider/provider.dart';

import '../core/app_route.dart';
import '../models/product.dart';
import '../providers/product_provider.dart';

class YourCartPage extends StatefulWidget {
  const YourCartPage({super.key});

  @override
  State<YourCartPage> createState() => _YourCartPageState();
}

class _YourCartPageState extends State<YourCartPage> {
  late List<Product> list;



  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
      final provider = context.watch<ProductProvider>();
      final product = provider.selectedProduct;
      list = [
        Product(id: 1, image: "assets/images/img_1.png", color: Color(0xffd3f1fd), soni: 1, price: 887.0, name: context.l10n.orange_chair,),
        Product(id: 1, image: "assets/images/img_2.png", color: Color(0xfff9e6bb), soni: 1, price: 2800.0, name: context.l10n.idish,),
      ];
      if (product != null) {
        list.add(product);
      }

  }

  double hisobla() {
    var sum = 0.0;
    for (var i in list) {
      sum += i.soni * i.price;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 2),
          child: Container(
            color: Colors.grey,
            width: double.infinity,
            height: 1,
          ),
        ),
        title:  Text(
          context.l10n.your_cart,
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      context.l10n.empty_cart,
                      overflow: TextOverflow.ellipsis,
                    ),
                    content: Text(
                        context.l10n.dialogdagi_text),
                    actions: [
                      OutlinedButton(
                        onPressed: () =>
                            Navigator.pop(context),
                        child: Text(context.l10n.bekor_qilish),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            list.clear();
                            Navigator.pop(context);
                          });
                        },
                        child:  Text(context.l10n.empty_cart),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: list.isEmpty? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_basket,size: 30,),
            Text(context.l10n.your_cart_is_empty,style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            Text(context.l10n.looking),
            SizedBox(height: 20,),
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
                    context.go(Routes.products);
                  }, child: Text(context.l10n.yangi_narsa)),
            )
          ],
        ),
      ) :Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                var item = list[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(item.image),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text(
                                            '${context.l10n.ochirish}: "${item.name}"',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          content: Text(
                                              '${context.l10n.qism1} "${item.name}" ${context.l10n.qism2}'),
                                          actions: [
                                            OutlinedButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child:  Text(context.l10n.bekor_qilish),
                                            ),
                                            OutlinedButton(
                                              onPressed: () {
                                                setState(() {
                                                  list.removeAt(index);
                                                  Navigator.pop(context);
                                                });
                                              },
                                              child: Text(context.l10n.ochirish),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: const Icon(Icons.delete, size: 16),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Text("${item.soni}"),
                                const SizedBox(width: 15),
                                Container(
                                  alignment: Alignment.center,
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        item.soni++;
                                      });
                                    },
                                    child: const Icon(Icons.add, size: 16),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "\$${item.price}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: (){
              context.go(Routes.shipping);
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
                   Text(
                    context.l10n.chek,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$${hisobla()}",
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
