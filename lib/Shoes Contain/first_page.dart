import 'package:figmaui_to_code/Shoes_details/details_home.dart';
import 'package:flutter/material.dart';

class ShoesContent extends StatelessWidget {
  const ShoesContent({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "White",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "A Pair",
                                style: TextStyle(color: Colors.black38),
                              )
                            ],
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(Icons.check_circle_outline),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Container(
                        color: null,
                        height: 85,
                        child: Positioned(
                          top: 0.0,
                          right: 285.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeDetails(),
                                ),
                              );
                            },
                            child: const Image(
                              image: AssetImage('images/shoe2.jpg'),
                            ),
                          ),
                        ),
                      ),
                      elevation: 10,
                    ),
                    const Spacer(),
                    const Text(
                      "220.0 BDT",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
