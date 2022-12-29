local LSM = LibStub("LibSharedMedia-3.0")
local addonName, addonTable = ...

if LSM == nil then return end

-- Backgrounds -- These can be either, .tga or .blp
-- LSM:Register("background", "my background's name", [[Interface\Addons\ElvUI_Ozzis_Media\Media\Background\mybackground.tga]])

-- Borders -- These can be either, .tga or .blp
-- LSM:Register("border", "my border's name", [[Interface\Addons\ElvUI_Ozzis_Media\Media\Border\myborder.tga]])

-- Icons -- These can be either, .tga or .blp
--LSM:Register("icon", "my icon's name", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Icons\myicon.blp]])

-- Statusbars
-- LSM:Register("statusbar", "my statusbar's name", [[Interface\Addons\ElvUI_Ozzis_Media\Statusbar\mytexture.tga]])

-- Textures
-- LSM:Register("texture", "my texture's name", [[Interface\Addons\ElvUI_Ozzis_Media\Texture\mytexture.tga]])

-- Fonts
LSM:Register("font", "Calibri", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibri.ttf]])
LSM:Register("font", "Calibri Bold", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibrib.ttf]])
LSM:Register("font", "Calibri Bold Italic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibriz.ttf]])
LSM:Register("font", "Calibri Italic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibrii.ttf]])
LSM:Register("font", "Calibri Light", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibril.ttf]])
LSM:Register("font", "Calibri Light Italic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\calibrili.ttf]])
LSM:Register("font", "Century Gothic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\GOTHIC.ttf]])
LSM:Register("font", "Century Gothic Italic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\GOTHICI.ttf]])
LSM:Register("font", "Cronos Pro Regular", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\cronospro-regular.otf]])
LSM:Register("font", "Designosaur", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Designosaur.otf]])
LSM:Register("font", "Designosaur Italic", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Designosaur-Italic.otf]])
LSM:Register("font", "Eason Pro Regular", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Eason Pro Regular.otf]])
LSM:Register("font", "Eason Pro Bold", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Eason Pro Bold.otf]])
LSM:Register("font", "Enchanted Land", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Enchanted Land.otf]])
LSM:Register("font", "Futura PT Book", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Futura-PT-Book.ttf]])
LSM:Register("font", "Imagine", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\imagine.ttf]])
LSM:Register("font", "Mark Pro", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Mark-Pro.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Bold", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Mark-Pro-Bold.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Medium", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\MarkPro-Medium.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Regular", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\MarkPro-Regular.otf]])
LSM:Register("font", "One Slice", [[Interface\Addons\ElvUI_Ozzis_Media\Media\Font\One Slice.otf]])
LSM:Register("font", "PEPSI", [[Interface\Addons\ElvUI_Ozzis_Media\Media\Font\PEPSI.ttf]])
LSM:Register("font", "Restiany", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\Restiany.otf]])
LSM:Register("font", "Roberto Condensed Bold", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\RobotoCondensed-Bold.ttf]])
LSM:Register("font", "ROG", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\ROG.otf]])
LSM:Register("font", "Sanfransico Regular", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Font\SFUIText-Regular.otf]])

-- Sounds
LSM:Register("sound", "Guild Wars 2 Message", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\GW2Message.ogg]])
LSM:Register("sound", "Guild Wars 2 Mail", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\GW2Email.ogg]])
LSM:Register("sound", "Carbonite", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\QuestComplete.ogg]])
LSM:Register("sound", "Map Ping", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\MapPing.ogg]])
LSM:Register("sound", "Oh Shit!", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\oh-shit.ogg]])
LSM:Register("sound", "Loot Coin", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\LootCoinSmall.ogg]])
LSM:Register("sound", "Ion Skill Issue", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\frankly.ogg]])
LSM:Register("sound", "iPhone Ding", [[Interface\AddOns\ElvUI_Ozzis_Media\Media\Sound\iphone-ding-sound.ogg]])
