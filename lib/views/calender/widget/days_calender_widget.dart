import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_management/configs/theme/colors.dart';

class DaysCalenderWidget extends StatefulWidget {
  const DaysCalenderWidget({Key? key}) : super(key: key);

  @override
  State<DaysCalenderWidget> createState() => _DaysCalenderWidgetState();
}

class _DaysCalenderWidgetState extends State<DaysCalenderWidget> {
  late ValueNotifier<int> selectedIndex;
  late DateTime now;
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    selectedIndex = ValueNotifier<int>(0); // Initialize selectedIndex
  }

  @override
  void dispose() {
    selectedIndex.dispose(); // Dispose ValueNotifier
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Row(
        children: List.generate(
          lastDayOfMonth.day,
          (index) {
            final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
            final dayName = DateFormat('E').format(currentDate);
            return Padding(
              padding:
                  EdgeInsets.only(left: index == 0 ? 0.0 : 16.0, right: 16.0),
              child: ValueListenableBuilder<int>(
                valueListenable: selectedIndex,
                builder: (context, indexSelected, child) => DayItem(
                  dayName: dayName,
                  dayNumber: index + 1,
                  isSelected: selectedIndex.value == index,
                  onTap: () {
                    selectedIndex.value = index; // Update selectedIndex
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DayItem extends StatelessWidget {
  final String dayName;
  final int dayNumber;
  final bool isSelected;
  final VoidCallback onTap;

  const DayItem({
    required this.dayName,
    required this.dayNumber,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 42.0,
            width: 42.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(44.0),
            ),
            child: Text(
              dayName.substring(0, 1),
              style: TextStyle(
                fontSize: 24.0,
                color: isSelected ? Colors.white : Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "$dayNumber",
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            height: 2.0,
            width: 28.0,
            color: isSelected ? AppColors.primaryColor : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
