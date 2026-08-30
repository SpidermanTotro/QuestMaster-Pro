return {
    std = "lua51",

    globals = {
        -- Addon namespaces and saved variables
        "AzerothPilot", "QuestMasterPro", "QMP",
        "AzerothPilotDB", "AzerothPilotCharDB",
        "QuestMasterProDB", "QuestMasterProCharDB",
        "SampleAddonDB", "SampleAddonCharDB",

        -- WoW UI and API
        "CreateFrame", "UIParent", "WorldMapFrame", "Minimap", "GameTooltip", "TomTom",
        "C_QuestLog", "C_Timer", "C_Map",
        "UnitXP", "UnitXPMax", "UnitLevel", "UnitExists", "UnitGUID", "UnitName",
        "UnitClass", "UnitFactionGroup",
        "GetTime", "GetZoneText", "GetSubZoneText", "GetPlayerFacing",
        "GetItemCooldown", "GetBindLocation", "GetBuildInfo", "GetRealmName",
        "GetQuestID", "GetQuestLogRewardXP", "GetQuestLogRewardInfo",
        "GetQuestLogItemLink", "GetItemInfo", "GetNumQuestLogRewards",
        "GetSpecialization", "GetSpecializationInfo", "GetInventoryItemLink",
        "GetItemStats", "PlaySound", "SOUNDKIT", "FlashClientIcon",
        "CombatLogGetCurrentEventInfo", "strsplit", "time", "date", "IsInGroup",
        "UIFrameFadeIn", "UIFrameFadeOut",
        "InterfaceOptions_AddCategory", "InterfaceOptionsFrame_OpenToCategory", "Settings",

        -- Slash commands
        "SlashCmdList",
        "SLASH_QMPTRAVEL1", "SLASH_QMPTRAVEL2",
        "SLASH_QMPXP1", "SLASH_QMPXP2",
        "SLASH_QMPSKIP1", "SLASH_QMPSKIP2",
        "SLASH_QMPNOTIFY1", "SLASH_QMPNOTIFY2",
        "SLASH_QMPGEAR1", "SLASH_QMPGEAR2",
        "SLASH_APRPTR1",
        "SLASH_AZEROTHPILOT1", "SLASH_AZEROTHPILOT2", "SLASH_AZEROTHPILOT3",
        "SLASH_QUESTMASTER1", "SLASH_QUESTMASTER2", "SLASH_QUESTMASTER3",

        -- XML-created frame globals
        "AzerothPilotMainFrame", "AzerothPilotMainFrameTitle",
        "AzerothPilotMainFrameNextButton", "AzerothPilotMainFramePrevButton",
        "AzerothPilotMainFrameStepText", "AzerothPilotMainFrameCoordText",
    },

    max_line_length = 140,
    exclude_files = {"Data/*.lua"},

    -- Colon-method declarations intentionally receive self.
    ignore = {"212/self"},
}
