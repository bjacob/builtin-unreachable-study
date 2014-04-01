#ifdef USE_UNREACHABLE
#define UNREACHABLE() __builtin_unreachable()
#else
#define UNREACHABLE()
#endif

int foo(int x, int y)
{
  int result = 0;

  if      (x == 0)  result = 1;
  else if (x == 1)  result = y;
  else if (x == 2)  result = y*y + y;
  else if (x == 3)  result = y*y*y;
  else if (x == 4)  result = (y*y + 1) / (y + 10);
  else if (x == 5)  result = y*y*y + y;
  else if (x == 6)  result = 2*y;
  else if (x == 7)  result = y*y + 3*y;
  else if (x == 8)  result = 5*y*y*y + y*y;
  else if (x == 9)  result = 7*y*y + 1;
  else if (x == 10) result = 3*y*y*y - y + 1;
  else {
    UNREACHABLE();
  }

  return result;
}
