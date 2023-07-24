import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Sound Log",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            NewWidget(
              text: 'Door open',
              text2: 'Hailway 6:00 pm',
            ),
            SizedBox(
              height: 14,
            ),
            LineWiget(),
            SizedBox(
              height: 14,
            ),
            NewWidget(text: "Door Open", text2: "Hailway 6:00 pm"),
            SizedBox(
              height: 14,
            ),
            LineWiget(),
            SizedBox(
              height: 14,
            ),
            NewWidget(text: "Baby Crying", text2: "Nursery 6:10 am"),
            SizedBox(
              height: 14,
            ),
            LineWiget(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Yesterday",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            NewWidget(text: "Baby Crying", text2: "Nursey 5:40 am"),
            SizedBox(
              height: 14,
            ),
            LineWiget(),
            SizedBox(
              height: 14,
            ),
            NewWidget(text: "Door bell", text2: "Hailway 17:30"),
            SizedBox(
              height: 14,
            ),
            LineWiget(),
            SizedBox(
              height: 25,
            ),
            Text(
              "Monday 11th April 2022",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            NewWidget(text: "Baby Gate", text2: "Nursery 5:10 am"),
          ],
        ),
      ),
    );
  }
}

class LineWiget extends StatelessWidget {
  const LineWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;
  final String text2;
  const NewWidget({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 78,
          height: 73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromARGB(255, 231, 219, 219),
          ),
          child: const Icon(
            Icons.photo_camera_back_outlined,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            Text(
              text2,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const Icon(Icons.outlined_flag)
      ],
    );
  }
}
