slot0 = class("NewDuelResultStatisticsPage", import("..NewBattleResultStatisticsPage"))

function slot0.UpdatePlayer(slot0)
	slot0.playerName.text = getProxy(PlayerProxy):getRawData():GetName()
	slot2 = getProxy(MilitaryExerciseProxy):getSeasonInfo()
	slot4, slot5 = SeasonInfo.getNextMilitaryRank(slot2.score, slot2.rank)
	slot0.playerLv.text = SeasonInfo.getMilitaryRank(slot2.score, slot2.rank).name
	slot0.playerExpLabel.text = i18n("word_rankScore")

	if not slot0.contextData.autoSkipFlag then
		slot0.duelAniamtion = NewBattleResultDuelAniamtion.New(slot0.playerExp, slot0.playerExpBar, slot5, slot0.contextData.oldRank, slot2)

		slot0.duelAniamtion:SetUp(function ()
			uv0.playerExp.text = "+" .. NewBattleResultUtil.GetSeasonScoreOffset(uv0.contextData.oldRank, uv1)
			uv0.playerExpBar.fillAmount = uv1.score / uv2
		end)
	else
		slot6()
	end
end

function slot0.UpdateChapterName(slot0)
	slot0.chapterName.text = getProxy(MilitaryExerciseProxy):getPreRivalById(slot0.contextData.rivalId or 0) and slot2.name or ""

	setActive(slot0.opBonus, false)
end

function slot0.OnDestroy(slot0)
	uv0.super.OnDestroy(slot0)

	if slot0.duelAniamtion then
		slot0.duelAniamtion:Dispose()

		slot0.duelAniamtion = nil
	end
end

return slot0
