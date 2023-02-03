void main(){
  List l = [-3,2,-5,-7,1];

  l.forEach((element) { 
    if(element < 0){
      print(element);
    }
  });
}