#ifdef USE_UNREACHABLE
#define UNREACHABLE() __builtin_unreachable()
#else
#define UNREACHABLE()
#endif

unsigned int foo(unsigned int x)
{
  bool b = x > 100;

  if (!b) {
    UNREACHABLE();
  }

  if (b) {
    return (x*x*x*x + x*x + 1) / (x*x*x + x + 1234);
  }

  return x;
}
