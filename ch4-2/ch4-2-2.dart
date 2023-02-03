import 'dart:io';

void main(){

  stdout.write("Enter size of list: ");
  int n = int.parse(stdin.readLineSync()!);

  List<String> l = List.generate(n, (index) => "");

  for(int i = 0;i < n; i++){
    stdout.write("Enter name: ");
    l[i] = stdin.readLineSync()!;
  }

  print("${l.toSet().toList()}");
}