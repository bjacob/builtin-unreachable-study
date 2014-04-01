#ifdef USE_UNREACHABLE
#define UNREACHABLE() __builtin_unreachable()
#else
#define UNREACHABLE()
#endif

int foo(int x, int y)
{
  int result = 0;
  switch(x) {
    case 0:                     break;
    case 1: result = y;         break;
    case 2: result = y*y + y;   break;
    case 3: result = y*y*y;     break;
    case 4: result = y*y + 1;   break;
    case 5: result = y*y*y + y; break;
    default: UNREACHABLE();     break;
  }

  return result;
}
