class Habit {
  final String id;
  final String name;
  final String icon;
  int streak;
  DateTime lastCompleted;

  Habit({
    required this.id,
    required this.name,
    required this.icon,
    this.streak = 0,
    required this.lastCompleted,
  });

  factory Habit.fromMap(Map<String, dynamic> map, String id) {
    return Habit(
      id: id,
      name: map['name'],
      icon: map['icon'],
      streak: map['streak'] ?? 0,
      lastCompleted: DateTime.parse(map['lastCompleted']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
      'streak': streak,
      'lastCompleted': lastCompleted.toIso8601String(),
    };
  }
}