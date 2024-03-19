class TaskModel {
  final int taskId;
  final String taskTitle;
  final String taskType;
  final String taskPrerioty;
  final String taskDate;
  final String taskTime;
  final String taskDuration;
  final String taskStatus;

  TaskModel(this.taskId, this.taskTitle, this.taskType, this.taskPrerioty,
      this.taskDate, this.taskTime, this.taskDuration, this.taskStatus);

  TaskModel copyWith({
    int? taskId,
    String? taskTitle,
    String? taskType,
    String? taskPrerioty,
    String? taskDate,
    String? taskTime,
    String? taskDuration,
    String? taskStatus,
  }) {
    return TaskModel(
      taskId ?? this.taskId,
      taskTitle ?? this.taskTitle,
      taskType ?? this.taskType,
      taskPrerioty ?? this.taskPrerioty,
      taskDate ?? this.taskDate,
      taskTime ?? this.taskTime,
      taskDuration ?? this.taskDuration,
      taskStatus ?? this.taskStatus,
    );
  }
}
