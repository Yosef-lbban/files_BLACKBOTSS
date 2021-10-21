
local function BLACKBOTSSe(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local BLACKBOTSSChengName = database:get(bot_id.."BLACKBOTSS:Cheng:Name"..data.id_)
if not data.first_name_ then 
if BLACKBOTSSChengName then 
send(msg.chat_id_, msg.id_, "يولد هذا غير اسمه  ["..BLACKBOTSSChengName..']')
database:del(bot_id.."BLACKBOTSS:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if BLACKBOTSSChengName ~= data.first_name_ then 
local Text = {
  ' ليش مغير اسمك 🌞😹😹😹',
  "غيرت اسمك القديم 🤞😂😂",
  "الو اسمك القديم وين  😂😘",
  'ها يول شو مغير اسمك', 
  'الو غيرت اسمك الو جاوبيني 😔💔',
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BLACKBOTSS:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end

end
return {BLACKBOTSS = BLACKBOTSSe}
