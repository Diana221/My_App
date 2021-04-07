void chooseBestDistance(int t, int k, List<int> ls) {
  try {
    if (t >= 0 && k >= 0 && k <= 5 && ls.isNotEmpty && ls.length > 1) {
      List<int> new_list = [];
      int sum = ls[0];
      int i;

      for (int j = 0; j < ls.length; j++) {
        for (i = 0; i <= k; i++) {
          sum = sum + ls[i + 1];
          new_list.add(sum);
        }
        sum = ls[j];
      }

      print(new_list);

      for (int i = new_list.length - 1; i >= 0; i--) {
        if (new_list[i] <= t) {
          print(new_list[i]);
          break;
        }
      }
    } else {
      print("Результат не знайдено!");
    }
  } catch (e) {
    print("Виникла помилка!");
  }
}

void main() {
  chooseBestDistance(174, 3, [51, 56, 58, 59, 61]); //173
  chooseBestDistance(163, 3, [50]); // -1
}
