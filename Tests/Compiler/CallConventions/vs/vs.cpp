// vs.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "vs.h"
#include <cassert>
BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
    return TRUE;
}


VS_API int foo_cdecl(int sedm, int trinact, int devatenact)
{
  assert(sedm==7);
  assert(trinact==13);
  assert(devatenact==19);
  return 101;
}