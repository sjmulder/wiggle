#include <windows.h>

void
WinMainCRTStartup(void)
{
	POINT pt;

	while (1) {
		Sleep(60 * 1000);
		GetCursorPos(&pt);
		SetCursorPos(pt.x ? pt.x+1 : pt.x-1, pt.y);
		SetCursorPos(pt.x, pt.y);
	}
}
