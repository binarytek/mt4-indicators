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

int getKeyCode(string val) {
   if (val == "a") return 65;
   if (val == "b") return 66;
   if (val == "c") return 67;
   if (val == "d") return 68;
   if (val == "e") return 69;
   if (val == "f") return 70;
   if (val == "g") return 71;
   if (val == "h") return 72;
   if (val == "i") return 73;
   if (val == "j") return 74;
   if (val == "k") return 75;
   if (val == "l") return 76;
   if (val == "m") return 77;
   if (val == "n") return 78;
   if (val == "o") return 79;
   if (val == "p") return 80;
   if (val == "q") return 81;
   if (val == "r") return 82;
   if (val == "s") return 83;
   if (val == "t") return 84;
   if (val == "u") return 85;
   if (val == "b") return 86;
   if (val == "w") return 87;
   if (val == "x") return 88;
   if (val == "y") return 89;
   if (val == "z") return 90;
   else return 65;
}
