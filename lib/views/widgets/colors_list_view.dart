import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int CurrentIndex = 0;

  List<Color> colors = const [
    Color(0xffDE6B48),
    Color(0xffE5B181),
    Color(0xffF4B9B2),
    Color(0xffDAEDBD),
    Color(0xff7DBBC3),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                CurrentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: CurrentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
