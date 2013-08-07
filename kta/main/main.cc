

#include <iostream>

#include "../a1sl/a1sl.h"
#include "../a2sl/a2sl.h"
#include "../a01dl/a01dl.h"
#include "../a02dl/a02dl.h"

int main(int argc, char**argv) {
    // Print welcome messages...
    std::cout << "Init main..." << std::endl;
    std::cout << init_a1sl();
    std::cout << init_a2sl();
    

    // Prints arguments...
    if (argc > 0) {
        std::cout << std::endl << "Arguments:" << std::endl;
        for (int i = 0; i < argc; i++) {
            std::cout << i << ": " << argv[i] << std::endl;
        }
    }
    
    A *t=new A();
    delete t;
    deinit__a1sl();
    
    DBW*t2= a01dl_init();
    PGresult *kk=t2->get("");
    PQclear(kk);
    std::cout << a02dl_init();

    return 0;
}
