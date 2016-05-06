//+------------------------------------------------------------------+
//|                                                 zoom-hotkeys.mq4 |
//|                                                        binarytek |
//|                                    https://github.com/binarytek/ |
//+------------------------------------------------------------------+
#property copyright "binarytek"
#property link      "https://github.com/binarytek/"
#property version   "1.00"
#property strict


#import "user32.dll"
void keybd_event(int bVk,int bScan,int dwFlags,int dwExtraInfo);
#import

input string note = ""; // Enter only one character to customize the keys for zooming
input string zoomInKey = "q";
input string zoomOutKey = "e";

void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam) {
   
   if (id == CHARTEVENT_KEYDOWN) {
      if (lparam == getKeyCode(zoomInKey)) {
         keybd_event(187,0,0,0); //+ button
      }
      if (lparam == getKeyCode(zoomOutKey)) {
         keybd_event(189,0,0,0); //- button
      }
   }
}

// Keycodes: http://help.adobe.com/en_US/AS2LCR/Flash_10.0/help.html?content=00000520.html
int getKeyCode(string val) {
   StringToUpper(val);
   return StringGetChar(val, 0);
}
