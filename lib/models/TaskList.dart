class Task {
  final String name;
  bool state;
  Task({required this.name, this.state = false});

  void toogle() {
    state = !state;
  }
}
