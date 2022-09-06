import 'package:meditate/models/naviteminfo.dart';
import 'package:meditate/models/navtype.dart';
import 'package:meditate/models/featuredinfo.dart';
import 'package:meditate/views/themes.dart';

List<NavItemInfo> bottomNavs = [
  NavItemInfo(navType: NavType.home, icon: "icons/ic_home.png", label: "Home"),
  NavItemInfo(
      navType: NavType.meditate,
      icon: "icons/ic_meditate.png",
      label: "Meditate"),
  NavItemInfo(
      navType: NavType.sleep, icon: "icons/ic_sleep.png", label: "Sleep"),
  NavItemInfo(
      navType: NavType.music, icon: "icons/ic_music.png", label: "Music"),
  NavItemInfo(
      navType: NavType.profile, icon: "icons/ic_profile.png", label: "Profile"),
];

List<String> chips = ["Sweet sleep", "Isomnia", "Depression", "Dream"];

List<FeaturedInfo> featureItems = [
  FeaturedInfo(
      backgroundColor: MyColor.fcolor1,
      title: "Sleep\nmediation",
      icon: "icons/ic_headphone.png"),
  FeaturedInfo(
      backgroundColor: MyColor.fcolor2,
      title: "Tips for\nsleeping",
      icon: "icons/ic_video.png"),
  FeaturedInfo(
      backgroundColor: MyColor.fcolor3,
      title: "Nice\nisland",
      icon: "icons/ic_video.png"),
  FeaturedInfo(
      backgroundColor: MyColor.fcolor4,
      title: "Calming\nSound",
      icon: "icons/ic_headphone.png"),
];
