import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/products_page.dart';

class YourCartPage extends StatefulWidget {
  final Map<String, dynamic> item;
  const YourCartPage({super.key, required this.item});

  @override
  State<YourCartPage> createState() => _YourCartPageState();
}

class _YourCartPageState extends State<YourCartPage> {
  List<Map<String, dynamic>> list = [
    {
      "image": "assets/images/img_1.png",
      "price": 887.00,
      "color": Color(0xffd3f1fd),
      "name": "Orange chair",
      "soni": 1
    },
    {
      "image": "assets/images/img_2.png",
      "price": 2800.00,
      "color": Color(0xfff9e6bb),
      "name": "Idish",
      "soni": 1
    },
  ];

  @override
  void initState() {
    super.initState();
    // faqat bir marta item qo‘shiladi
    list.add(widget.item);
  }

  double hisobla() {
    var sum = 0.0;
    for (var i in list) {
      sum += i["soni"] * i["price"];
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
        title: const Text(
          "Your Cart",
          style: TextStyle(fontSize: 30, color: Colors.black),
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
                      'Empty cart',
                      overflow: TextOverflow.ellipsis,
                    ),
                    content: Text(
                        'Are you sure you want to delete all items in your cart?'),
                    actions: [
                      OutlinedButton(
                        onPressed: () =>
                            Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            list.clear();
                            Navigator.pop(context);
                          });
                        },
                        child: const Text('Empty cart'),
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
            Text("Your cart is empty",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            Text("Looking for details ?"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
                  }, child: Text("Explore new Products")),
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
                          color: item["color"],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(item["image"]),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["name"],
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
                                            'Delete: "${item["name"]}"',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          content: Text(
                                              'Are you sure you want to delete "${item["name"]}" from your cart'),
                                          actions: [
                                            OutlinedButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: const Text('Cancel'),
                                            ),
                                            OutlinedButton(
                                              onPressed: () {
                                                setState(() {
                                                  list.removeAt(index);
                                                  Navigator.pop(context);
                                                });
                                              },
                                              child: const Text('Delete'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: const Icon(Icons.delete, size: 16),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Text("${item["soni"]}"),
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
                                        item["soni"]++;
                                      });
                                    },
                                    child: const Icon(Icons.add, size: 16),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "\$${item["price"]}",
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
          Container(
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
                const Text(
                  "Check out",
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
        ],
      ),
    );
  }
}
