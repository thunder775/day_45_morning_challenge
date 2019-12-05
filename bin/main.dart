// Best Time to Buy and Sell Stock
/// Say you have an array for which the ith element is the price of a given stock on day i.
//  If you were only permitted to complete at most one transaction (i.e., buy one
// and sell one share of the stock), design an algorithm to find the maximum profit.
// Note that you cannot sell a stock before you buy one.
//  Example 1:
//  Input: [7,1,5,3,6,4]
//  Output: 5
import 'dart:math';

int getMaxProfit(List<int> prices) {
  int profit = 0;
  for (int i = 0; i < prices.length; i++) {
    int maximum = prices.sublist(i, prices.length).reduce(max);
    if (maximum > prices[i]) {
      int tempProfit = maximum - prices[i];
      if (tempProfit > profit) {
        profit = tempProfit;
      }
    }
  }

  return profit;
}

main() {
  print(getMaxProfit([7, 1, 5, 3, 6, 4]));
  print(getMaxProfit([1,1,1,1]));
}
