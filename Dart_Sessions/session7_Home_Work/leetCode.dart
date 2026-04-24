/*You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 

Example 1:

Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
Example 2:

Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
 

Constraints:

1 <= prices.length <= 105
0 <= prices[i] <= 104

*/
class Solution {
  int maxProfit(List<int> prices) => bestTrade(prices).profit;

  /// Returns the best single buy/sell trade.
  /// - profit: maximum achievable profit (0 if none)
  /// - buyDay/sellDay: indices of the trade (null if no profitable trade)
  Trade bestTrade(List<int> prices) {
    // LeetCode guarantees length >= 1, but make it robust
    if (prices.length < 2) return const Trade.none();

    // Debug-time input validation (won't affect performance in release)
    assert(_validate(prices), 'Invalid price values');

    int minPrice = prices[0];
    int minDay = 0;

    int bestProfit = 0;
    int? bestBuy;
    int? bestSell;

    for (int day = 1; day < prices.length; day++) {
      final price = prices[day];

      // If we sell today, what's the profit vs the cheapest buy so far?
      final profitToday = price - minPrice;
      if (profitToday > bestProfit) {
        bestProfit = profitToday;
        bestBuy = minDay;
        bestSell = day;
      }

      // Update cheapest buy candidate AFTER considering selling today
      if (price < minPrice) {
        minPrice = price;
        minDay = day;
      }
    }

    return bestProfit == 0
        ? const Trade.none()
        : Trade(profit: bestProfit, buyDay: bestBuy!, sellDay: bestSell!);
  }

  bool _validate(List<int> prices) {
    for (final p in prices) {
      if (p < 0 || p > 10000) return false; // depend
    }
    return true;
  }
}

/// Immutable result object (clean + testable).
class Trade {
  final int profit;
  final int? buyDay;
  final int? sellDay;

  const Trade({
    required this.profit,
    required this.buyDay,
    required this.sellDay,
  });

  const Trade.none() : this(profit: 0, buyDay: null, sellDay: null);
}
