import 'dart:io';
class Util{
   static int price = 0 , quantity = 0;
   static  String name ="";
   static int  index1 = 0;

  static bool validateIndex(int ind){                  // for index valuation while accrssing the enum type                                             //
 
  if(ind < 0 || ind  >=3)return false;
  return true;

}

static void printOptions(){                  // show ooption to the user for more choices
  print('enter the type of item');
  print('0 :for raw');
  print('1:for manufactured');
  print('2 :for imported');

  bool isValid = false;
  while(!isValid){
  try{
     index1 = int.parse(stdin.readLineSync()!);
     isValid = true;
  }
  catch(e){
    print("INVALID INPUT PLZ ENTER AN INTEGER RANGING (0-2)");
    isValid= false;
  }
  }

}



static bool addMoreItem(String? option){           // asking  the user for more choices 
  if(option !='n'  && option !='y'){
    print('Invalid choice by the User');
  }
  return (option == 'y'); 
}



static void takeValidInputFromUser(){               // reading the valid input from the user and validating it

 bool validPrice  = false , validQuantity=false;

  while(!validPrice){
    try{
     print('enter the price of item');
     price = int.parse(stdin.readLineSync()!) ;     /// fundamentally wrong(ek bari try kra to sab try me hona chaie) // never in catck block;
     validPrice = true;
    }
    catch(e){
      print("INVALID INPUT PLZ ENTER  AN INTEGER");
      validPrice = false;
    }
 }

  
  print('enter the name of item');
  name = stdin.readLineSync()!;


  while(!validQuantity){
  try{
    print('enter the quantiity of item');
    quantity = int.parse(stdin.readLineSync()!) ; 
    validQuantity = true;
  }
  catch(e){
     print("INVALID INPUT PLZ ENTER  AN INTEGER");
     validQuantity = false;
  }
}
}


}