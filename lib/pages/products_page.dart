import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/review_page.dart';
import 'package:provider/provider.dart';

import '../core/app_route.dart';
import '../models/product.dart';
import '../providers/product_provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.l10n.mahsulotlar_list,
            style: TextStyle(fontSize: 30,),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: context.l10n.yangi),
              Tab(text: context.l10n.mebel),
              Tab(text: context.l10n.elektronika),
              Tab(text: context.l10n.fashions),

            ],
          ),
        ),
        body: TabBarView(children: [New(), New(), New(), New()]),
      ),
    );
  }
}

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductProvider>();
    final l10n = context.l10n;

    // localization bo‘yicha product name update qilamiz
    final products = provider.products.asMap().entries.map((entry) {
      final index = entry.key;
      final product = entry.value;
      return Product(
        id: product.id,
        image: product.image,
        color: product.color,
        soni: product.soni,
        price: product.price,
        // har bir productga translation beramiz
        name: l10n.orange_chair + ' ${index + 1}',
      );
    }).toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            var item = products[index];
            return GestureDetector(
              onTap: (){
                provider.selectProduct(item);
                context.go(Routes.review);
              },
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: item.color,
                      ),
                      child: Image.asset(item.image, width: 50),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("\$${item.price}"),
                      Icon(Icons.more_horiz)
                    ],),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
