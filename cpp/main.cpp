#include <iostream>

using namespace std;
int f(int x){
    if(x % 2 == 0)
        return 1;
    return 0;
}

int main()
{
    cout << f(2);
    return 0;
}