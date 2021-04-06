void chooseBestDistance(int t, int k, List<int> ls) {
  try {
    if (t >= 0 && k >= 0 && ls.isNotEmpty && ls.length > 1) {
      List<int> new_list = [];

      for (int i = 0; i < ls.length; i++) {
        for (int j = 1; j < ls.length - 2; j++) {
          for (int m = 2; m < ls.length - 1; m++) {
            new_list.add(ls[i] + ls[j] + ls[m]);
          }
        }
      }

      for (int i = new_list.length - 1; i >= 0; i--) {
        if (new_list[i] < t) {
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
