module("extensions.IS", package.seeall)
extension = sgs.Package("IS")

-- 武将: 测试
test = sgs.General(extension, "test", "wu", "3", true)
-- 白板武将
sgs.LoadTranslationTable{
    ["IS"] = "0904201班级杀",
    ["test"] = "周广禄",
}

-- 武将: 成昊
charley = sgs.General(extension, "charley", "shu", 4, true)
-- 技能: 黑颜
heiyan = sgs.CreateTriggerSkill{
    name = "heiyan",
    events = {sgs.Predamage, sgs.Damage, sgs.Damaged},
    frequency = sgs.Skill_Compulsory,

    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        local damage = data:toDamage()
        local card = damage.card
        if card:isBlack() then
            if event == sgs.Predamage then
                damage.damage = damage.damage+1
                data:setValue(damage)
                player:speak("黑颜伤害加1")
            else
                local recover = sgs.RecoverStruct()
                recover.who = player
                recover.reason = self:objectName()
                recover.recover = 1
                room:recover(player, recover)
            end
        end
    end,
}
charley:addSkill(heiyan)
sgs.LoadTranslationTable{
    ["charley"] = "成昊",
    ["heiyan"] = "黑颜",
    [":heiyan"] = "使用黑色牌造成的伤害+1,受到黑色牌的伤害-1",
}

-- 武将: 姚明
yaoming = sgs.General(extension, "yaoming", "shu", 4, true)
-- 技能: 激将
yaoming:addSkill("jijiang")
yaoming:addSkill("hujia")
sgs.LoadTranslationTable{
    ["yaoming"] = "姚明",
}
