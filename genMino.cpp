#include<cstdlib>
#include"genMino.h"
#define NUM_MINO 2
#define MINO_L 0
#define MINO_T 1

Mino*genMino()
{
 int mino_type;
 Mino*ptr;
 mino_type=random()%NUM_MINO;
 switch(mino_type)
 {
  case MINO_L:ptr=new MinoL;
              break;
  case MINO_T:ptr=new MinoT;
              break;
 }
 return ptr;
}
