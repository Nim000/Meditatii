#include <iostream>

using namespace std;
int f(int x){
    return f(x);
}

int main()
{
    cout<<f(3);
    return 0;
}