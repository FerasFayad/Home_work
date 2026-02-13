/*Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
 */
void main() {
  Book book = Book();
  book.title = 'Dart Programing';
  book.pages = 400;
  book.readingTime;
}

class Book {
  String _title = '';
  int _pages = 0;

  set title(String title) =>
      title.isNotEmpty ? _title = title : print('Invaled title');

  set pages(int pages) => pages >= 0 ? _pages = pages : print('Invaled value');

  String get title => _title;
  int get pages => _pages;

  double get readingTime => pages * 2;
}
