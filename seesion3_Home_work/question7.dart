/*Question 15
Write a Dart program that simulates a simple router
using a switch statement on a string path ('/', '/products', '/profile', or other). 
Handle each case with appropriate output, including maps and null safety where needed.
 */


void main() {
  Map<String, String> routes = {
    '/': 'Home Page',
    '/products': 'Products Page',
    '/profile': 'Profile Page',
  };

  String? currentPath = '/profile';

  switch (currentPath) {
    case '/':
      print(routes['/'] ?? 'Route not found');
      break;

    case '/products':
      print(routes['/products'] ?? 'Route not found');
      break;

    case '/profile':
      print(routes['/profile'] ?? 'Route not found');
      break;

    default:
      print('404 - Route not found');
  }
}
