#include <algorithm>
#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>
#include <tuple>

int main(int argc, char const *argv[])
{
    int n;
    
    std::cin >> n;
    
    std::vector<std::tuple<int, int, int>> points;
    
    for (int i = 1; i <= n; i++) {
        int x, y, z;
        
        std::cin >> x >> y >> z;
        
        points.push_back(std::make_tuple(x, y, z));
    }
    
    double answer = HUGE_VAL;
    
    for (auto p : points) {
        for (auto q : points) {
            if (p != q) {
                double delta_x = std::abs(std::get<0>(p)-std::get<0>(q));
                double delta_y = std::abs(std::get<1>(p)-std::get<1>(q));
                double delta_z = std::abs(std::get<2>(p)-std::get<2>(q));
                
                answer = std::min(std::hypot(delta_x, delta_y, delta_z), answer);
            }
        }
    }
    
    std::cout << std::setprecision(2) << std::fixed << answer << std::endl;
    
    return 0;
}
