#include <cstdlib>
#include <iostream>

unsigned long pow(int a, int p) {
  unsigned long ret = a;

  for (int i = 1; i < p; ++i)
    ret *= a;

  return ret;
}

bool fermat(int n) {
  // surely we can find a counterexample with 0 < a,b,c < 256;
  unsigned char a = 1, b = 1, c = 1;

  // don't give up until we've found a counterexample
  while (true) {
    if (pow(a, n) + pow(b, n) == pow(c, n)) {
      // found one!
      return true;
    }

    // make sure we iterate through all positive combinations of a,b,c
    if (!++a) {
      a = 1;
      if (!++b) {
        b = 1;
        if (!++c)
          c = 1;
      }
    }
  }

  return false;
}

int main(int argc, char** argv) {
  if (fermat(std::atoi(argv[1])))
   std::cout << "Found a counterexample to Fermat's Last Theorem" << std::endl;
}
