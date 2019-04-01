//
//  leak.cpp
//  leak
//
//  Created by Kare Koho on 17/03/2019.
//  Copyright © 2019 Kare Koho. All rights reserved.
//

#include <iostream>

int main (int argc, const char * argv[]) {
    size_t *n = 0;
    n = (size_t *) malloc (sizeof (size_t) * 3);
    
    for (size_t idx = 0; idx < 3; idx++) {
        *(n + idx) = idx;
        std::cout << *(n + idx) << std::endl;
    }
    // free ((void *) n);
    return 0;
}
