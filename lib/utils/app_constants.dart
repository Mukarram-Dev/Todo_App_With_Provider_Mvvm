import 'dart:ui';

import 'package:task_management/model/task_model.dart';

class AppConstants {
  static const String appName = 'Real Estate App';

  static const List<String> listOfTabIndicator = [
    'TO DO',
    'IN PROGRESS',
    'DONE'
  ];
  static const List randomImages = [
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'
  ];

  static List<TaskModel> taskList = [
    TaskModel('FIntexh App', '#UI Design', 'ASAP', 'SEP 17 - 19'),
    TaskModel('Brand Guide', '#graphic Design', 'MEDIUM', 'SEP 18 - 20'),
    TaskModel('Kickoff meeting', '#project managment', 'Low', 'SEP 21'),
    TaskModel('Kickoff meeting', '#project managment', 'Low', 'SEP 21'),
  ];

  static List<Color> listOfColors = [
    const Color(0xffc8fdc7),
    const Color(0xfffaf398),
    const Color(0xffdddefd),
  ];
}
