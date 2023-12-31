slot0 = class("MainChapterTimeUpSequence")

function slot0.Execute(slot0, slot1)
	slot2 = getProxy(ChapterProxy)

	slot2:checkRemasterInfomation()

	if slot3 and (not slot3:inWartime() or not (slot2:getActiveChapter() and slot2:getMapById(slot3:getConfig("map"))):isRemaster() and not slot3:inActTime()) then
		ChapterOpCommand.PrepareChapterRetreat(function ()
			pg.TipsMgr.GetInstance():ShowTips(i18n("levelScene_chapter_timeout"))

			if uv0 then
				uv0()
			end
		end)
	elseif slot1 then
		slot1()
	end
end

return slot0
