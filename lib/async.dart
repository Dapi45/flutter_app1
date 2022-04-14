void main() async {
  func1();
//   await func4(60).then(
//     (value) {
//       print(value);
//       print("Then");
//     },
//   ).catchError((error) {
//     print(error);
//     print("Error");
//   });

  try {
    var value = await func4(60);
    print(value);
    print("Try");
  } catch (error) {
    print(error);
    print("Error");
  }

  func2();
  func3();
}

func1() {
  print("Function 1");
}

func2() {
  print("Function 2");
}

func3() {
  print("Function 3");
}

Future<String> func4(int nilai) {
  return Future.delayed(Duration(seconds: 3), () {
    if (nilai > 50) {
      return "Lulus";
    } else {
      throw "Error Tidak Lulus";
    }
  });
}
