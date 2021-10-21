
local function ChengPhoto(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local BLACKBOTSSChengPhoto = database:get(bot_id.."BLACKBOTSS:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if BLACKBOTSSChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صورة الحلو 😂👌🏻")
database:del(bot_id.."BLACKBOTSS:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if BLACKBOTSSChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك  يا حلو ",
  "منور بالصورة الجديدة",
  "ها شو غيرت صورتك 🤔😹",
  "ليش غيرت صورتك 😹😹🌚",
  "أدري انك غيرت صورتك ؟😹🌞",
  "واضح انك غيرت صورتك ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BLACKBOTSS:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end

end
return {BLACKBOTSS = ChengPhoto}
