#include "soc_ctrl.h"

int main(){


  int errors=0;
  //example how to use a ss 0
  ss_init(1);
  volatile uint32_t temp_0 = 0x08;
  // this is basic read operation
  temp_0 = *( volatile uint32_t* ) 0x01051020;
  if (temp_0 == 0x08){
    errors++;
  }
  temp_0 = 0x08;
  // this is basic write operation
  *( volatile uint32_t* ) 0x01050020 = 0x08;

  temp_0 = *( volatile uint32_t* )0x01051020;

  if(temp_0 != 0x08){
    errors++;
  }

  return errors;

}
