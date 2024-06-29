String scopeExtern = 'extern';

void main() {
  // What's the Null Safety?
  // Benefits, helpers, security, productivity...

  // Without Null Safety:
  // void main() {
  //   String name;
  //   print(name.lengh);
  // }
  // --- [ERROR IN COMPILATION MODE] ---

  // With Null Safety:
  // void main() {
  //   String name;
  //   print(name.lengh);
  // }
  // --- [ERROR IN EXECUTION MODE] ---
  // More Advantages :D

  // String name = '';
  // ? -> permits null usage
  String? name;
  String name02;
  name02 = 'atribuindo';
  print(name02.length);

  String myName = 'Felipe';

  print(myName.length);

  // '!' -> garants exclamation is null but I say of this is not null
  // the compiler is obedient, even if wrong
  // use with care
  // String? exclamation;
  // print(exclamation!.length);

  // Scope Local
  String local;
  int a;
  int z;
  local = 'Scopes';
  print(local);

  scopeExtern = 'opa';

  // promote values Nullables to Non-Nullables

  // variables top level are exit of the scope, she's not promote to Non-Null
  // Local and Extern variables have differents characteristics

  // Locals
    // can promote and don't need update
    // can create without value and after atribute this 

  // Top Level 
    // don't can initialize after (it's not permissive)
    // the correct forms is assign soon
    // never promote to Non-Null value

  // Nullables by default:
    // if has local variables: if has a value atribute,
    // automatically is promote to Non-Null
}
