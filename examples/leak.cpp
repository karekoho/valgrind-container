#include <cstdlib>
#include <iostream>

int 
main (void) 
{
  size_t *n = 0;
  n = (size_t *) malloc (sizeof (size_t) * 3);
    
  for (size_t idx = 0; idx < 3; idx++) 
    {
      *(n + idx) = idx;
      std::cout << *(n + idx) << std::endl;
    }
  // free ((void *) n);
  return 0;
}
