#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=c:\program files (x86)\autoit3\scite\koda\forms\fish2.kxf
$Form1_1 = GUICreate("CrayonCode Fishing", 615, 437, 231, 124)
$Tab1 = GUICtrlCreateTab(0, 0, 614, 400)
$Tab_StatusLog = GUICtrlCreateTabItem("Status Log")
$ELog = GUICtrlCreateEdit("", 8, 32, 593, 361, BitOR($GUI_SS_DEFAULT_EDIT,$ES_READONLY))
GUICtrlSetFont(-1, 8, 400, 0, "Fixedsys")
$Tab_Settings = GUICtrlCreateTabItem("Global Settings")
GUICtrlSetState(-1,$GUI_SHOW)
$Loot_Settings = GUICtrlCreateGroup("Loot Settings", 13, 37, 121, 169)
$LRarity = GUICtrlCreateLabel("Minimum Rarity:", 25, 60, 78, 17)
$CRarity = GUICtrlCreateCombo("", 33, 84, 82, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Gold|Blue|Green|White|Specials Only", "Blue")
GUICtrlSetTip(-1, "Pick up items that are equal or higher Rarity.")
$CBSpecial1 = GUICtrlCreateCheckbox("Loot Silver Key", 25, 164, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Pick up Silverkey. (Ignores Minimum Rarity)")
$CBSpecial2 = GUICtrlCreateCheckbox("Loot Ancient Relic", 25, 132, 105, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Pick up Ancient Relics. (Ignores Minimum Rarity)")
$CBSpecial3 = GUICtrlCreateCheckbox("Loot Coelacanth", 25, 148, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Pick up Coealacanth. (Ignores Minimum Rarity)")
$CBEvent = GUICtrlCreateCheckbox("Loot Event items", 25, 117, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Pick up event items. (Ignores Minimum Rarity) [You can add new even items by putting a cropped .bmp or .png to res/event]")
$CBTrash = GUICtrlCreateCheckbox("Loot Trash", 25, 181, 97, 17)
GUICtrlSetTip(-1, "Do you want to pick up trash? Are you sure? (Will loot white rarity items with quantity)")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Side_Functions = GUICtrlCreateGroup("Side Functions", 8, 213, 601, 89)
$CBFeedWorker = GUICtrlCreateCheckbox("Enable Feed Worker", 20, 245, 121, 17)
GUICtrlSetTip(-1, "Will feed workers every 90 minutes. Make sure to have beer in the inventory.")
$IFeedWorkerInterval = GUICtrlCreateInput("30", 226, 243, 41, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlSetLimit(-1, 3)
GUICtrlSetTip(-1, "Interval in minutes.")
$Label1 = GUICtrlCreateLabel("Interval:", 174, 247, 42, 17)
$BFeedWorker = GUICtrlCreateButton("Test", 280, 243, 50, 21)
$CBBuff = GUICtrlCreateCheckbox("Enable BuffKeys", 21, 272, 121, 17)
$Label2 = GUICtrlCreateLabel("Interval:", 173, 275, 42, 17)
$IBuffInterval = GUICtrlCreateInput("30", 225, 272, 41, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlSetLimit(-1, 3)
GUICtrlSetTip(-1, "Interval in minutes.")
$IBuffKeys = GUICtrlCreateInput("", 328, 272, 121, 21)
$Label3 = GUICtrlCreateLabel("Keys:", 288, 275, 30, 17)
$BBuffKeys = GUICtrlCreateButton("Test", 472, 272, 50, 21)
$BLoopSide = GUICtrlCreateButton("Loop Sidefunctions only", 464, 233, 132, 33)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Client_Settings = GUICtrlCreateGroup("Client Settings", 144, 37, 457, 169)
$IClientName = GUICtrlCreateInput("", 256, 61, 153, 21)
$Label4 = GUICtrlCreateLabel("Client Name:", 160, 64, 64, 17)
$Label5 = GUICtrlCreateLabel("Client Language:", 160, 96, 84, 17)
$CLang = GUICtrlCreateCombo("", 260, 92, 82, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "en|de|fr", "en")
GUICtrlSetTip(-1, "Pick up items that are equal or higher Rarity.")
$CBLogFile = GUICtrlCreateCheckbox("Enable Logfile", 160, 128, 97, 17)
$CBLootCapture = GUICtrlCreateCheckbox("Enable Screencap Loot", 160, 152, 209, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Drying_Settings = GUICtrlCreateGroup("Drying Settings", 8, 304, 337, 89)
$CBDryFish = GUICtrlCreateCheckbox("Enable Drying Fish", 19, 329, 121, 17)
GUICtrlSetTip(-1, "Will dry fish when inventory is almost full. Empty Slots will be automatically evaluated after.")
$LDryingRarity = GUICtrlCreateLabel("Max Rarity:", 141, 331, 57, 17)
$CDryFish = GUICtrlCreateCombo("", 201, 327, 82, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "White|Green|Blue|Gold", "White")
GUICtrlSetTip(-1, "Maxmum rarity to use for drying.")
$BDryFish = GUICtrlCreateButton("Test", 287, 327, 50, 21)
$IDryFishInterval = GUICtrlCreateInput("5", 87, 351, 41, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlSetLimit(-1, 3)
GUICtrlSetTip(-1, "Interval in minutes.")
$Label6 = GUICtrlCreateLabel("Interval:", 35, 354, 42, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Inventory_Settings = GUICtrlCreateGroup("Inventory_Settings", 352, 304, 257, 89)
$CBDiscardRods = GUICtrlCreateCheckbox("Enable Discard Rods", 368, 328, 121, 17)
GUICtrlSetTip(-1, "Discards disposable fishingrods. (Those that can't be repaired)")
$IBufferSize = GUICtrlCreateInput("0", 440, 356, 65, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Label7 = GUICtrlCreateLabel("Buffer Size:", 368, 360, 58, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$TabSheet1 = GUICtrlCreateTabItem("Tab_Stats")
$ListView1 = GUICtrlCreateListView("|Session|Total|", 24, 40, 570, 342)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 100)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 100)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 100)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 100)
GUICtrlCreateTabItem("")
$BSave = GUICtrlCreateButton("Save Settings", 8, 400, 100, 33)
$BFish = GUICtrlCreateButton("Start Fishing [F4]", 256, 400, 100, 33)
$BMinigame = GUICtrlCreateButton("Solve Minigame [F5]", 128, 400, 100, 33)
$BQuit = GUICtrlCreateButton("Quit [CTRL+F1]", 504, 400, 100, 33)
$BPause = GUICtrlCreateButton("Un/Pause [F3]", 384, 400, 100, 33)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###