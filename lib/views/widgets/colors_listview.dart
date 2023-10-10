import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubits/add_note_cubit.dart';

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
    const Color(0XFFDB5A42),
    const Color(0XFFDF8065),
    const Color(0XFFE3A587),
    const Color(0XFFC49274),
    const Color(0XFFA57F60),
    const Color(0XFFC79764),
    const Color(0XFFE8AE68),
    const Color(0XFFF4C06F),
    const Color(0XFFFFD275),
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
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
