module("extensions.IS", package.seeall)
extension = sgs.Package("IS")

-- 武将: 测试
test = sgs.General(extension, "test", "wu", "3", false)
-- 白板武将
sgs.LoadTranslationTable{
    ["IS"] = "0904201班级杀",
    ["test"] = "周广禄",
}
