import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditate/data/viewsdata.dart';
import 'package:meditate/models/naviteminfo.dart';
import 'package:meditate/models/navtype.dart';
import 'package:meditate/views/themes.dart';

class MyBottomBar extends StatefulWidget {
  NavType defaultIndex;
  MyBottomBar({this.defaultIndex = NavType.home, super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        color: MyColor.darkBlue,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            navItem(
                (bottomNavs[0].navType == widget.defaultIndex),
                bottomNavs[0],
                (value) => setState(() {
                      widget.defaultIndex = value;
                    })),
            navItem(
                (bottomNavs[1].navType == widget.defaultIndex),
                bottomNavs[1],
                (value) => setState(() {
                      widget.defaultIndex = value;
                    })),
            navItem(
                (bottomNavs[2].navType == widget.defaultIndex),
                bottomNavs[2],
                (value) => setState(() {
                      widget.defaultIndex = value;
                    })),
            navItem(
                (bottomNavs[3].navType == widget.defaultIndex),
                bottomNavs[3],
                (value) => setState(() {
                      widget.defaultIndex = value;
                    })),
            navItem(
                (bottomNavs[4].navType == widget.defaultIndex),
                bottomNavs[4],
                (value) => setState(() {
                      widget.defaultIndex = value;
                    })),
          ],
        ));
  }
}

Widget navItem(
    bool isSelected, NavItemInfo itemInfo, ValueChanged<NavType> onTap) {
  double iconSize = 26;
  return GestureDetector(
    onTap: () => onTap(itemInfo.navType),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: (isSelected) ? MyColor.navBg : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(itemInfo.icon,
                color: (isSelected) ? Colors.white : MyColor.lightBlue,
                height: iconSize),
          ),
        ),
        Text(
          itemInfo.label,
          style: GoogleFonts.kodchasan(
            color: (isSelected) ? Colors.white : MyColor.lightBlue,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}
