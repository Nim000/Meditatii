// ignore_for_file: public_member_api_docs, sort_constructors_first
class Animal {
  int numberLegs;
  String name;
  Animal({
    required this.numberLegs,
    required this.name,
  });

  void sayHello(){
    print('Heloo from ${name}');
  }
}
class Dog extends Animal{
  Dog({required super.name}):super(numberLegs: 4);
  @override
  void sayHello(){
    print('Ham from ${name}');
  }
}


void main() {
  Animal caine =Animal(numberLegs: 4, name: "Rex");
  Animal caine1 =Dog(name: "Max");
  caine.sayHello();
  caine1.sayHello();
}