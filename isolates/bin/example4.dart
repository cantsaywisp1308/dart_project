import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  final rp = ReceivePort();
  Isolate.spawn(
    _parseJsonIsolateEntry,
    rp.sendPort,
  );

  final todos = rp
      .takeWhile((element) => element is Iterable<ToDo>)
      .cast<Iterable<ToDo>>()
      .take(1);
  await for (final todo in todos) {
    print(todo);
  }
}

void _parseJsonIsolateEntry(SendPort sp) async {
  final client = HttpClient();
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/');
  final todos = await client
      .getUrl(uri)
      .then((req) => req.close())
      .then((response) => response.transform(utf8.decoder).join())
      .then((value) => jsonDecode(value) as List<dynamic>)
      .then((json) => json.map((map) => ToDo.fromJson(map)));

  sp.send(todos);
}

class ToDo {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;

  ToDo({
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  @override
  String toString() =>
      'Todo (userId: $userId, id: $id, title: $title, isCompleted: $isCompleted)';

  ToDo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        isCompleted = json['completed'];
}
