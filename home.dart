import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card with grid view')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemCount: 4,
                itemBuilder: (ctx, i) {
                  return Card(
                    child: Container(
                      height: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  'https://openclipart.org/image/2400px/svg_to_png/195100/1406320996.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Apple',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹ 120',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 264,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
