import 'dart:io';
void main(){
  print('Enter height of tree');
  int? height = int.parse(stdin.readLineSync()!);
  String length = 'x';
  String spaceBar = '';
  for(int i=0; i <height; i++ ){         // i = 1
    int numberSpaceBar = height - i;     // i = 1 number= 3
    print('${spaceBar * numberSpaceBar}$length'); // . x   // i = 1    .... xxx
    length += 'xx'; // xxx               // i = 1    xxxxx
    // ....  // i = 1    .... * 3 =
    }
}

/*
1.    x       i=0  height= 4 length=x s= height -i (4)        numberSpaceBar =4  spaceBar = . *4 (
2.   xxx      i=1  height= 4 length=xxx s= height-i (3)       numberSpaceBar =  spaceBar =
3.  xxxxx     i=2  height= 4 length=xxxxx s= height -i (2)    numberSpaceBar =  spaceBar =
4. xxxxxxx    i=3  height= 4 length=xxxxxxx s= height -i (1)  numberSpaceBar =  spaceBar =


 */