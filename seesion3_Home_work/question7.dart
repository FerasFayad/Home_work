/*Question 15
Write a Dart program that simulates a simple router
using a switch statement on a string path ('/', '/products', '/profile', or other). 
Handle each case with appropriate output, including maps and null safety where needed.
 */



import 'dart:ffi';

void main(){
Map<String, String> routes = {
    '/': 'Home Page',
    '/products': 'Products Page',
    '/profile': 'Profile Page',
  }; 
   String? currentPath = routes['/profile'];
  switch (currentPath) {
     case 'Home Page' : print('current path is${routes['/']}');
      break;
     case  'Products Page':  print('current path is a${routes['products']}');
      break;
      case 'other' : print('current path is a${routes['profile']}');
      break;
      default : print('try agin ${routes.keys}');
  }
  
}