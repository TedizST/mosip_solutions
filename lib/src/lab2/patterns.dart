class PatternsTasks {
  static void task7() {
    Map<String, Object> mapping = {
      "name": "Alex",
      "age": 35,
      "course": 2,
      "single": true,
      "description": [
        {"Мечтатель", "Ленив", "Студент", "Постоянно жалуется на жизнь"}
      ]
    };
    final {'name': name, 'age': age, 'description': description} = mapping;
    print(name);
    print(age);
    print(description);
  }

  static void task8() {
    Map<String, Object> mapping = {
      "nickname": "Alex",
      "age": 35,
      "course": 2,
      "ids": [
        {1, 2, 5}
      ]
    };
    final {'nickname': nickname, 'course': course, 'ids': ids} = mapping;
    print(nickname);
    print(course);
    print(ids);
  }

  static void task11() {
    List<int> numbers = [1, 3, 4, 5, 6, -2, 7, -12, 22];
    final [_, ...filteredNumbers, _] = numbers;
    int sum = filteredNumbers.reduce((value, elem) => value + elem);
    print(sum);
  }

  static void task13() {
    List<int> numbers = [1, 3, 4, 5, 2, 4, 6, 6, -2, 7, -12, 22];
    final [...filteredNumbers, _, _, _, _] = numbers;
    int max = filteredNumbers.reduce((current, next) => current > next ? current : next);
    print(max);
  }

  static void task15() {
    var record = (23, 89, pef:'Oo', pruf: 3.976);
    print(record.$1 + record.$2);
  }
}

