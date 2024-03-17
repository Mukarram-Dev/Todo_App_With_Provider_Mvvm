import 'package:flutter/material.dart';

class TaskNameField extends StatelessWidget {
  const TaskNameField({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        controller: nameController,
        validator: (value) {
          if (value!.isEmpty) return 'Task Name Should not be empty';
          return null;
        },
        onSaved: (value) {
          nameController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          hintText: 'Task name',
          hintStyle: TextStyle(
            letterSpacing: 1.0,
            fontFamily: 'Inter',
          ),
        ),
        onFieldSubmitted: (value) => nameController.text = value,
      ),
    );
  }
}
