void main(){
  List<int> l = [4,6,2,6,9,2];
  int a = 0;

 l.forEach((element) {
  if(a<element){
    a = element;
  }
 });

  print(a);
}