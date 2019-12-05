import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {});
  test('get max profit', () {
    expect(getMaxProfit([7, 1, 5, 3, 6, 4]), 5);
    expect(getMaxProfit([1, 1, 1, 1]), 0);
    expect(getMaxProfit([7, 4, 5, 10, 6, 12]), 8);
  });
}
