#include "testlib.h"

#include <tuple>
#include <set>

int main(int argc, char* argv[])
{
    registerGen(argc, argv, 1);

    
    int min_n = opt<int>("min");
    int max_n = opt<int>("max");
    
    int min_value = opt<int>("min-value");
    int max_value = opt<int>("max-value");
    
    int n = rnd.next(min_n, max_n);

    println(n);
    
    std::set<std::tuple<int, int, int>> s;
    
    for (int i = 0; i < n; i++)
    {
        int x, y, z;
        
        do {
            x = rnd.next(min_value, max_value);
            y = rnd.next(min_value, max_value);
            z = rnd.next(min_value, max_value);
        } while (s.count(std::make_tuple(x, y, z)) > 0);
        
        println(x, y, z);
        
        s.insert(std::make_tuple(x, y, z));
    }
    
    return 0;
}