// RandomProject.cpp : Defines the entry point for the application.
//

#include "RandomProject.h"
#include "Random.h"
#include "Random.cpp"

using namespace std;

    void Test() {
        double d;
        for (int i = 0; i <= 9; i++) {
           d = SRandom::Int(2000);
           cout << "i = " << i << " d = " << d << "\n";
        }
    }

int main()
{
    Test();
	return 0;
}
