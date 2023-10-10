import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isactive, required this.colors});
  final bool isactive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: colors,
            ),
          )
        : CircleAvatar(
            backgroundColor: colors,
            radius: 38,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentindex = 0;
  List<Color> colors = [
    Color(0XFFDB5A42),
    Color(0XFFDF8065),
    Color(0XFFE3A587),
    Color(0XFFC49274),
    Color(0XFFA57F60),
    Color(0XFFC79764),
    Color(0XFFE8AE68),
    Color(0XFFF4C06F),
    Color(0XFFFFD275),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isactive: currentindex == index,
                  colors: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
