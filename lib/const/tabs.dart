import 'package:flutter/material.dart';

class TabInfo {
  final IconData icon;
  final String label;

  const TabInfo({
    required this.icon,
    required this.label,
  });
}

const TABS = [
  TabInfo(icon: Icons.home_rounded, label: '홈'),
  TabInfo(icon: Icons.local_play, label: '챌린지'),
  TabInfo(icon: Icons.account_circle, label: '내 정보'),
];