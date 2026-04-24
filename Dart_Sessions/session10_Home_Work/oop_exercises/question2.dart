/*
2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.
 */

import 'dart:io';

class FoodItem {
  final String name;
  final double price;
  final String category;

  FoodItem({required this.name, required this.price, required this.category});

  @override
  String toString() => '$name - \$${price.toStringAsFixed(2)} ($category)';
}

class OrderItem {
  final FoodItem item;
  int quantity;

  OrderItem({required this.item, this.quantity = 1});

  double get subtotal => item.price * quantity;

  @override
  String toString() =>
      '${item.name} x$quantity = \$${subtotal.toStringAsFixed(2)}';
}

class Order {
  final List<OrderItem> items = [];

  void addItem(FoodItem food, {int qty = 1}) {
    if (qty <= 0) return;

    // If item already in order, increase quantity
    final existingIndex = items.indexWhere((oi) => oi.item.name == food.name);
    if (existingIndex != -1) {
      items[existingIndex].quantity += qty;
    } else {
      items.add(OrderItem(item: food, quantity: qty));
    }
  }

  double get totalPrice {
    double total = 0;
    for (final oi in items) {
      total += oi.subtotal;
    }
    return total;
  }

  void printReceipt() {
    if (items.isEmpty) {
      print('🧾 Order is empty.');
      return;
    }

    print('\n========= RECEIPT =========');
    for (final oi in items) {
      print(oi);
    }
    print('---------------------------');
    print('TOTAL: \$${totalPrice.toStringAsFixed(2)}');
    print('===========================\n');
  }
}

class FoodDeliveryApp {
  final List<FoodItem> menu = [
    FoodItem(name: 'Margherita Pizza', price: 8.50, category: 'Pizza'),
    FoodItem(name: 'Pepperoni Pizza', price: 10.00, category: 'Pizza'),
    FoodItem(name: 'Burger', price: 7.25, category: 'Main'),
    FoodItem(name: 'Fries', price: 3.00, category: 'Sides'),
    FoodItem(name: 'Cola', price: 1.75, category: 'Drinks'),
    FoodItem(name: 'Water', price: 1.00, category: 'Drinks'),
  ];

  final Order order = Order();

  void showMenu() {
    print('\n===== MENU =====');
    for (int i = 0; i < menu.length; i++) {
      print('${i + 1}) ${menu[i]}');
    }
  }

  void run() {
    while (true) {
      print('\n===== Food Delivery App =====');
      print('1) Show Menu');
      print('2) Add Item to Order');
      print('3) View Receipt');
      print('4) Exit');

      final choice = _readLine('Choose: ').trim();

      if (choice == '1') {
        showMenu();
      } else if (choice == '2') {
        showMenu();
        final indexStr = _readLine('Enter item number: ').trim();
        final qtyStr = _readLine('Enter quantity: ').trim();

        final index = int.tryParse(indexStr);
        final qty = int.tryParse(qtyStr);

        if (index == null || qty == null || index < 1 || index > menu.length) {
          print('❌ Invalid item number.');
          continue;
        }
        if (qty <= 0) {
          print('❌ Quantity must be >= 1.');
          continue;
        }

        final selected = menu[index - 1];
        order.addItem(selected, qty: qty);
        print('✅ Added: ${selected.name} x$qty');
      } else if (choice == '3') {
        order.printReceipt();
      } else if (choice == '4') {
        print('Bye 👋');
        break;
      } else {
        print('❌ Invalid option.');
      }
    }
  }
}

String _readLine(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? '';
}

void main() {
  FoodDeliveryApp().run();
}
