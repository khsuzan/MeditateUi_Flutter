import 'package:flutter/material.dart';
import 'package:meditate/views/themes.dart';
import 'package:meditate/data/viewsdata.dart';
import 'package:meditate/views/viewutil/custompaints.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(
          height: 40,
        ),
        greetingSection(),
        const SizedBox(
          height: 20,
        ),
        chipSection(),
        const SizedBox(
          height: 30,
        ),
        dailyThought(),
        const SizedBox(
          height: 40,
        ),
        featuredTitle(),
        const SizedBox(
          height: 20,
        ),
        featuredItems(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

Widget greetingSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Good morning, Suzan",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Text("We wish you have a good day!",
                style: TextStyle(fontSize: 14, color: MyColor.lightBlue)),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "icons/ic_search.png",
              height: 24,
              color: Colors.white,
            ))
      ],
    ),
  );
}

class ChipWidgets extends StatefulWidget {
  int defIndex;
  ChipWidgets({this.defIndex = 0, super.key});

  @override
  State<ChipWidgets> createState() => _ChipWidgetsState();
}

class _ChipWidgetsState extends State<ChipWidgets> {
  @override
  Widget build(BuildContext context) {
    void changeChip(int index) {
      setState(() {
        widget.defIndex = index;
      });
    }

    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (() => changeChip(index)),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color:
                (widget.defIndex == index) ? MyColor.navBg : MyColor.lightBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                  child: Text(
                chips[index],
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

Widget chipSection() {
  return ChipWidgets();
}

Widget dailyThought() {
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 15),
    clipBehavior: Clip.hardEdge,
    color: MyColor.card1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: CustomPaint(
      painter: ThoughtPainter(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Daily Thought",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Meditation Daily  3-10 min",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              ],
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyColor.navBg),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    ),
  );
}

Widget featuredTitle() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Text("Featured",
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600)),
  );
}

Widget featuredItems() {
  return GridView.count(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    children: List.generate(
        featureItems.length,
        (index) => AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: featureItems[index].backgroundColor),
                child: CustomPaint(
                  painter: MyCustomPainter(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            featureItems[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                featureItems[index].icon,
                                height: 24,
                                color: Colors.white,
                              ),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: MyColor.navBg,
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Start",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
            )),
  );
}
