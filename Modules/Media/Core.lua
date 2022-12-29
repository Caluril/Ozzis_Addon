local LSM = LibStub('LibSharedMedia-3.0')
local AddOnName = ...
local Path = [[Interface\AddOns\]]..AddOnName..[[Modules\Media\]]

-- Backgrounds -- These can be either, .tga or .blp
--LSM:Register("background", "my background's name", Path..[[Backgrounds\mybackground.tga]])

-- Borders -- These can be either, .tga or .blp
--LSM:Register("border", "my border's name", Path..[[Borders\myborder.tga]])

-- Icons -- These can be either, .tga or .blp
--LSM:Register("icon", "my icon's name", Path..[[Icons\myicon.blp]])

-- Statusbars
--LSM:Register("statusbar", "my statusbar's name", Path..[[Statusbars\mytexture.tga]])

-- Textures
--LSM:Register("texture", "my texture's name", Path..[[Textures\mytexture.tga]])

-- Fonts
LSM:Register("font", "Calibri", Path..[[Fonts\calibri.ttf]])
LSM:Register("font", "Calibri Bold", Path..[[Fonts\calibrib.ttf]])
LSM:Register("font", "Calibri Bold Italic", Path..[[Fonts\calibriz.ttf]])
LSM:Register("font", "Calibri Italic", Path..[[Fonts\calibrii.ttf]])
LSM:Register("font", "Calibri Light", Path..[[Fonts\calibril.ttf]])
LSM:Register("font", "Calibri Light Italic", Path..[[Fonts\calibrili.ttf]])
LSM:Register("font", "Century Gothic", Path..[[Fonts\GOTHIC.ttf]])
LSM:Register("font", "Century Gothic Italic", Path..[[Fonts\GOTHICI.ttf]])
LSM:Register("font", "Cronos Pro Regular", Path..[[Fonts\cronospro-regular.otf]])
LSM:Register("font", "Designosaur", Path..[[Fonts\Designosaur.otf]])
LSM:Register("font", "Designosaur Italic", Path..[[Fonts\Designosaur-Italic.otf]])
LSM:Register("font", "Eason Pro Regular", Path..[[Fonts\Eason Pro Regular.otf]])
LSM:Register("font", "Eason Pro Bold", Path..[[Fonts\Eason Pro Bold.otf]])
LSM:Register("font", "Enchanted Land", Path..[[Fonts\Enchanted Land.otf]])
LSM:Register("font", "Futura PT Book", Path..[[Fonts\Futura-PT-Book.ttf]])
LSM:Register("font", "Imagine", Path..[[Fonts\imagine.ttf]])
LSM:Register("font", "Mark Pro", Path..[[Fonts\Mark-Pro.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Bold", Path..[[Fonts\Mark-Pro-Bold.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Medium", Path..[[Fonts\MarkPro-Medium.otf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Mark Pro Regular", Path..[[Fonts\MarkPro-Regular.otf]])
LSM:Register("font", "One Slice", Path..[[Fonts\One Slice.otf]])
LSM:Register("font", "PEPSI", Path..[[Fonts\PEPSI.ttf]])
LSM:Register("font", "Restiany", Path..[[Fonts\Restiany.otf]])
LSM:Register("font", "Roberto Condensed Bold", Path..[[Fonts\RobotoCondensed-Bold.ttf]])
LSM:Register("font", "ROG", Path..[[Fonts\ROG.otf]])
LSM:Register("font", "Sanfransico Regular", Path..[[Fonts\SFUIText-Regular.otf]])

-- Sounds
LSM:Register("sound", "Guild Wars 2 Message", Path..[[Sounds\GW2Message.ogg]])
LSM:Register("sound", "Guild Wars 2 Mail", Path..[[Sounds\GW2Email.ogg]])
LSM:Register("sound", "Carbonite", Path..[[Sounds\QuestComplete.ogg]])
LSM:Register("sound", "Map Ping", Path..[[Sounds\MapPing.ogg]])
LSM:Register("sound", "Oh Shit!", Path..[[Sounds\oh-shit.ogg]])
LSM:Register("sound", "Loot Coin", Path..[[Sounds\LootCoinSmall.ogg]])
LSM:Register("sound", "Ion Skill Issue", Path..[[Sounds\frankly.ogg]])
LSM:Register("sound", "iPhone Ding", Path..[[Sounds\iphone-ding-sound.ogg]])
