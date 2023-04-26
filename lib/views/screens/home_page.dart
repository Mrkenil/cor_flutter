import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
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
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('cart_page');
              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Wellcome.",
                style: TextStyle(
                  fontFamily: "banyu",
                  fontSize: 50,
                ),
              ),
              Text(
                "New items",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: h * 0.3,
                color: Colors.white,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('itame_page');
                      },
                      child: Container(
                        width: 400,
                        height: 300,
                        color: Colors.grey,
                      ),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return Container(
                      width: 20,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Top offers",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: h * 0.45,
                width: w,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 200,
                      width: 200,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
