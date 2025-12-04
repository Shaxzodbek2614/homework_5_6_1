import 'package:flutter/material.dart';
import 'package:omework_5_6_1/l10n/l10n.dart';
import 'package:omework_5_6_1/pages/review_page.dart';

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
        body: TabBarView(children: [New(context), New(context), New(context), New(context)]),
      ),
    );
  }
}

class New extends StatelessWidget {
  BuildContext context;
  New(this.context);
  List<Map<String,dynamic>> list(){
    var list1 = [
      {"image":"assets/images/img_1.png","price":887.00,"color":Color(0xffd3f1fd),"name":context.l10n.orange_chair,"soni":1},
      {"image":"assets/images/img_2.png","price":2800.00,"color":Color(0xfff9e6bb),"name":context.l10n.idish,"soni":1},
      {"image":"assets/images/img_3.png","price":150.00,"color":Color(0xffe5f6f5),"name":context.l10n.sumka,"soni":1},
      {"image":"assets/images/img_1.png","price":887.00,"color":Color(0xffd3f1fd),"name":context.l10n.orange_chair,"soni":1},
    ];
    return list1;
  }

  @override
  Widget build(BuildContext context) {
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
          itemCount: 4,
          itemBuilder: (context, index) {
            var item = list()[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewPage(map: item,)));
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
                        color: item["color"],
                      ),
                      child: Image.asset(item["image"], width: 50),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("\$${item["price"]}"),
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
