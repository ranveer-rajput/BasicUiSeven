import 'package:flutter/material.dart';
import 'package:flutter_application_7/widget_page_one.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "earzz",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(13),
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const MaineWidget(
              text: 'Kitchen',
            ),
            const SizedBox(
              height: 15,
            ),
            const MaineWidget(text: "Nursery"),
          ],
        ),
      ),
    );
  }
}
