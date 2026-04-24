void main() {
  double price = 250;
  bool isStudent = true;
  bool hasCoupon = true;
  double threshold = 150;

  double finalPrice = price;
  const discount = 0.8; 

  if (isStudent) {
    finalPrice = price * discount;
  } else {
    if (hasCoupon) {
      finalPrice = price * discount;
    } else {
      if (price > threshold) {
        finalPrice = price * discount;
      }
    }
  }

  print("Final price: $finalPrice");
}
