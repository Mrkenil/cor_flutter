import 'package:flutter/material.dart';

import '../../utils/lists.dart';

class cart_page extends StatefulWidget {
  const cart_page({Key? key}) : super(key: key);

  @override
  State<cart_page> createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
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
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
      ),
      body: (items.isNotEmpty)
          ? Container(
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
                                items[i]['image'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  items[i]['name'],
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "${items[i]['priz']}",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            items.remove(items[i]);
                                          });
                                        },
                                        icon: Icon(Icons.delete)),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (items[i]['order'] == 0) {
                                            items[i]['order'] = 0;
                                          } else {
                                            items[i]['order']--;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove),
                                    ),
                                    Text("${items[i]['order']}"),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          items[i]['order']++;
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
                  itemCount: items.length),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_box,
                    size: 100,
                  ),
                  Container(
                    child: Text(
                      "ADD fust",
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('bill_page');
        },
        child: Icon(Icons.inventory_outlined),
      ),
    );
  }
}
