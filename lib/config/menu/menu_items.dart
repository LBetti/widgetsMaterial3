import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTtitle: 'Varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Botones',
      subTtitle: 'Contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card),
];
