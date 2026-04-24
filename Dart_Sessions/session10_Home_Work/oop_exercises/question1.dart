/*
1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes. 
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.
 */
/*
1. Notes App – Organize Your Notes

Features:
- Each note has: title, content, createdAt
- Create new notes
- List all notes
- Search note by title
*/
import 'dart:io';

class Note {
  final String title;
  final String content;
  final DateTime createdAt;

  Note({required this.title, required this.content, DateTime? createdAt})
    : createdAt = createdAt ?? DateTime.now();

  @override
  String toString() {
    final d = createdAt;
    final dateText =
        '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')} '
        '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
    return 'Title: $title\nDate: $dateText\nContent: $content';
  }
}

class NotesApp {
  final List<Note> _notes = [];

  // 1) Create new note
  void addNote(String title, String content) {
    _notes.add(Note(title: title.trim(), content: content.trim()));
  }

  // 2) List all notes
  void listNotes() {
    if (_notes.isEmpty) {
      print('No notes yet.');
      return;
    }

    for (int i = 0; i < _notes.length; i++) {
      print('\n--- Note ${i + 1} ---');
      print(_notes[i]);
    }
  }

  // 3) Search by title (contains, case-insensitive)
  List<Note> searchByTitle(String query) {
    final q = query.trim().toLowerCase();
    return _notes
        .where((n) => n.title.toLowerCase().contains(q))
        .toList(growable: false);
  }
}

String _readLine(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? '';
}

void main() {
  final app = NotesApp();

  while (true) {
    print('\n===== Notes App =====');
    print('1) Create new note');
    print('2) List all notes');
    print('3) Search note by title');
    print('4) Exit');

    final choice = _readLine('Choose an option: ').trim();

    if (choice == '1') {
      final title = _readLine('Enter title: ');
      final content = _readLine('Enter content: ');

      if (title.trim().isEmpty || content.trim().isEmpty) {
        print('Title and content cannot be empty.');
        continue;
      }

      app.addNote(title, content);
      print('✅ Note added.');
    } else if (choice == '2') {
      app.listNotes();
    } else if (choice == '3') {
      final query = _readLine('Search title: ');
      if (query.trim().isEmpty) {
        print('Search query cannot be empty.');
        continue;
      }

      final results = app.searchByTitle(query);
      if (results.isEmpty) {
        print('No matches found.');
      } else {
        print('\nFound ${results.length} result(s):');
        for (int i = 0; i < results.length; i++) {
          print('\n--- Result ${i + 1} ---');
          print(results[i]);
        }
      }
    } else if (choice == '4') {
      print('Bye 👋');
      break;
    } else {
      print('Invalid option. Try again.');
    }
  }
}
