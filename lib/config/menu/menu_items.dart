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
      title: 'Cards',
      subTtitle: 'Contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicator',
      subTtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogs',
      subTtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
];
