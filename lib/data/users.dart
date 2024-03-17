import 'package:meta_products/classes/user.dart';

final List<User> users = [
  User(
    "raul_marin",
    "raul",
    ["Roma"],
    ["Roma"],
    ["Roma"],
  ),
  User(
    "Roma",
    "Roma",
    ["raul_marin"],
    ["raul_marin"],
    ["raul_marin"],
  ),
  User(
    "Krunal Modi",
    "krunal",
    ["raul_marin", "Roma"],
    ["raul_marin"],
    ["raul_marin", "Roma"],
  ),
  User(
    "Eduard",
    "edgar",
    ["raul_marin", "Roma", "Krunal Modi"],
    ["raul_marin"],
    ["raul_marin", "Roma"],
  ),
  User(
    "L",
    "el",
    ["raul_marin", "Roma", "Krunal Modi"],
    ["raul_marin", "Eduard"],
    ["raul_marin", "Roma"],
  ),
  User(
    "Hanna Serg",
    "hanna",
    ["raul_marin", "Roma", "Krunal Modi"],
    ["raul_marin", "Eduard"],
    ["raul_marin", "Roma", "L"],
  ),
  User(
    "Kiryl",
    "kira",
    ["raul_marin", "Roma", "Krunal Modi"],
    ["raul_marin", "Eduard", "Hanna Serg"],
    ["raul_marin", "Roma", "L"],
  ),
  User(
    "Sonya",
    "subara",
    ["raul_marin", "Roma", "Krunal Modi", "Kiryl"],
    ["raul_marin", "Eduard", "Hanna Serg"],
    ["raul_marin", "Roma", "L"],
  ),
  User(
    "Taya",
    "toyota",
    ["raul_marin", "Roma", "Krunal Modi", "Kiryl"],
    ["raul_marin", "Eduard", "Hanna Serg"],
    ["raul_marin", "Roma", "L", "Sonya"],
  ),
  User(
    "Sanjay Shendy",
    "sanji",
    ["raul_marin", "Roma", "Krunal Modi", "Sonya"],
    ["raul_marin", "Eduard", "Hanna Serg", "Taya"],
    ["raul_marin", "Roma", "L", "Kiryl"],
  ),
];
