import 'dart:ui';

import 'package:task_management/configs/assets/image_assets.dart';
import 'package:task_management/model/task_model.dart';
import 'package:task_management/model/user_model.dart';

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
    TaskModel('FIntexh App', '#UI Design', 'ASAP', 'SEP 17 - 19', '11:00am',
        '30min', 'TO DO'),
    TaskModel('Brand Guide', '#graphic Design', 'MEDIUM', 'SEP 18 - 20',
        '12:00am', '3 hrs', 'IN PROGRESS'),
    TaskModel('Kickoff meeting', '#project managment', 'Low', 'SEP 21',
        '5:00pm', '1 hrs', 'TO DO'),
    TaskModel('Logo Design', '#Fintech App', 'Low', 'SEP 21', '7:00pm', '2 hrs',
        'Done'),
  ];

  static List<UserModel> userList = [
    UserModel(
        username: 'Mukarram Ali',
        email: 'bossmukaram@gmail.com',
        imageUrl:
            'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg'),
    UserModel(
        username: 'John Dae',
        email: 'johndae@gmail.com',
        imageUrl:
            'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
    UserModel(
        username: 'James J.',
        email: 'jamesj@gmail.com',
        imageUrl:
            'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'),
  ];

  static List<Color> listOfColors = [
    const Color(0xffc8fdc7),
    const Color(0xfffcfae5),
    const Color(0xffdddefd),
    const Color(0xffc8fdc7),
  ];

  static const List<String> listOfPririoty = ['Low', 'High', 'Asap', 'Medium'];
  static const List<String> menuProgress = ['TO DO', 'IN PROGRESS', 'DONE'];

  static List<Map<String, String>> onBoardPagerData = [
    {"text": 'Focus on the work that matters', "image": ImageAssets.pager1},
    {"text": 'Stay organized and effiecient', "image": ImageAssets.pager2},
    {"text": 'Plan, manage and track tasks', "image": ImageAssets.pager3}
  ];
}
