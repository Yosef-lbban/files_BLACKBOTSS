
local function ChengUserName(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local BLACKBOTSSChengUserName = database:get(bot_id.."BLACKBOTSS:Cheng:UserName"..data.id_)
if not data.username_ then 
if BLACKBOTSSChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفة  \n هذه معرفة  : [@"..BLACKBOTSSChengUserName..']')
database:del(bot_id.."BLACKBOTSS:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if BLACKBOTSSChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو  🌞😹😹😹',
"هاها شو غيرت معرفك  🤞😂😂",
"شسالفة شو غيرت معرفك 😐🌝",
"غير معرفة \n هذه معرفة : @"..data.username_.."",
'ها مو كان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك', 
"منور معرف جديد : "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BLACKBOTSS:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end

end
return {BLACKBOTSS = ChengUserName}
