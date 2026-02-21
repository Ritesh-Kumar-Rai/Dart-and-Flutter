void main() {
  /*
  1. Create a list of numbers: [10, 23, 45, 8, 12, 70].
  2. Filter it to keep only numbers greater than 20.
  3. Map the remaining numbers by multiplying them by 1.1 (adding 10% tax).
  4. Reduce (or Fold) that final list to get the total sum.
  5. Print the total.
*/

  const List<int> prices = [10, 23, 45, 8, 12, 70];

  Iterable<int> flitered = prices.where((n) => n > 20);
  Iterable<double> taxCalculatedPrices = flitered.map((p) => (p * 1.1));
  double total = taxCalculatedPrices.reduce((prev, current) => prev + current);

  print(
    "All list: $prices \nFiltered prices: $flitered \nTaxed prices: $taxCalculatedPrices \nTotal: $total",
  );

  // using chain
  double calculated = prices
      .where((p) => p > 20)
      .map((p) => p * 1.1)
      .reduce((prev, curr) => prev + curr);

  print("Total Calculated Price: $calculated");

  // while here in each iteration completion i am not using .toList(); because it will create a new list again for each operation that's why i am letting the result as iterable type which are returned from .where(), .map() for efficiency and optimisation
}
