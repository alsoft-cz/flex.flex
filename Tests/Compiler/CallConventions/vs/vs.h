// The following ifdef block is the standard way of creating macros which make exporting 
// from a DLL simpler. All files within this DLL are compiled with the VS_EXPORTS
// symbol defined on the command line. this symbol should not be defined on any project
// that uses this DLL. This way any other project whose source files include this file see 
// VS_API functions as being imported from a DLL, whereas this DLL sees symbols
// defined with this macro as being exported.
#ifdef VS_EXPORTS
#define VS_API __declspec(dllexport)
#else
#define VS_API __declspec(dllimport)
#endif

VS_API int __cdecl foo_cdecl(int sedm, int trinact, int devatenact);
