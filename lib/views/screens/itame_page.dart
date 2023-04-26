import 'package:flutter/material.dart';
import 'package:pr5/utils/lists.dart';

class itame_page extends StatefulWidget {
  const itame_page({Key? key}) : super(key: key);

  @override
  State<itame_page> createState() => _itame_pageState();
}

class _itame_pageState extends State<itame_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Store",
          style: TextStyle(
            color: Color(0xff2a8657),
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('cart_page');
            },
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.separated(
            itemBuilder: (context, i) {
              return Card(
                child: Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        child: Image.network(
                          New_items[i]['image'],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "${New_items[i]['name']} (${New_items[i]['kg']} Kg)",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "₹ ${New_items[i]['priz']}",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  items.add(New_items[i]);
                                },
                                child: Text("ADD"),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (New_items[i]['order'] == 0) {
                                      New_items[i]['order'] = 0;
                                    } else {
                                      New_items[i]['order']--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              Text("${New_items[i]['order']}"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    New_items[i]['order']++;
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, i) {
              return SizedBox(
                height: 20,
              );
            },
            itemCount: New_items.length),
      ),
    );
  }
}
