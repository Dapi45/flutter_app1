// void main() async {
//   func1();
// //   await func4(60).then(
// //     (value) {
// //       print(value);
// //       print("Then");
// //     },
// //   ).catchError((error) {
// //     print(error);
// //     print("Error");
// //   });

//   try {
//     var value = await func4(60);
//     print(value);
//     print("Try");
//   } catch (error) {
//     print(error);
//     print("Error");
//   }

//   func2();
//   func3();
// }

// func1() {
//   print("Function 1");
// }

// func2() {
//   print("Function 2");
// }

// func3() {
//   print("Function 3");
// }

// Future<String> func4(int nilai) {
//   return Future.delayed(Duration(seconds: 3), () {
//     if (nilai > 50) {
//       return "Lulus";
//     } else {
//       throw "Error Tidak Lulus";
//     }
//   });
// }

void main() async {
  func1();
  await func2();
  await hit1();
  await hit2();
  await hit3();
  func3();
}

func1() {
  print("Loading . . .");
}

Future func2() {
  return Future.delayed(Duration(seconds: 3), () {
    print("Pintu akan dibuka dalam 3 detik");
  });
}

Future hit1() {
  return Future.delayed(Duration(seconds: 2), () {
    print("3...");
  });
}

Future hit2() {
  return Future.delayed(Duration(seconds: 1), () {
    print("2...");
  });
}

Future hit3() {
  return Future.delayed(Duration(seconds: 1), () {
    print("1...");
  });
}

Future func3() {
  return Future.delayed(Duration(seconds: 1), () {
    print("Selamat Datang");
  });
}