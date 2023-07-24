
import 'package:flutter/material.dart';

class MaineWidget extends StatelessWidget {
  final String text;
  const MaineWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.398,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(29),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section with icon, text, and battery indicator
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with icon, text, and battery indicator
                Row(
                  children: [
                    Container(
                      height: 78,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.photo_size_select_actual_outlined),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "100%🔋",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 33,
                      width: 66,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "On",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            height: 23,
                            width: 23,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                // Row with three NewWidget instances
                const Row(
                  children: [
                    NewWidgetPageOne(text1: "Baby", text2: "Crying"),
                    SizedBox(
                      width: 8,
                    ),
                    NewWidgetPageOne(text1: "Baby", text2: "Crib"),
                    SizedBox(
                      width: 8,
                    ),
                    NewWidgetPageOne(text1: "Door", text2: "opening"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // Container with black background at the bottom
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: const Center(
              child: Text(
                "Edit device settings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewWidgetPageOne extends StatelessWidget {
  final String text1;
  final String text2;
  const NewWidgetPageOne({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white60,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const Icon(
              Icons.photo_outlined,
              size: 44,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
