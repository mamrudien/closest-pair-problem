#include "testlib.h"
 
int main(int argc, char* argv[])
{
    int n;
    
    registerValidation(argc, argv);
    
    n = inf.readInt(2, 800, "n");
    
    inf.readEoln();
    
    for (int i = 0; i < n; i++)
    {
        inf.readInt(-1'000'000, 1'000'000, "x");
        inf.readSpace();
        
        inf.readInt(-1'000'000, 1'000'000, "y");
        inf.readSpace();
        
        inf.readInt(-1'000'000, 1'000'000, "z");
        inf.readEoln();
    }
 
    inf.readEof();
}
