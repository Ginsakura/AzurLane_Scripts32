slot0 = class("MainUrgencySceneSequence")

function slot0.Execute(slot0, slot1)
	slot0:NextOne(1, {
		"SkipToActivity",
		"SkipToReFluxActivity",
		"SkipToTechnology"
	}, slot1)
end

function slot0.NextOne(slot0, slot1, slot2, slot3)
	if not slot0[slot2[slot1]](slot0) then
		return
	end

	if slot5 and slot1 < #slot2 then
		slot0:NextOne(slot1 + 1, slot2, slot3)
	else
		slot3()
	end
end

function slot0.SkipToActivity(slot0)
	if getProxy(ActivityProxy):findNextAutoActivity() then
		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.ACTIVITY)

		return false
	end

	return true
end

function slot0.SkipToReFluxActivity(slot0)
	if getProxy(RefluxProxy):isCanSign() and slot1:isInRefluxTime() then
		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.REFLUX)

		return false
	end

	return true
end

function slot0.SkipToTechnology(slot0)
	if not LOCK_TECHNOLOGY and pg.SystemOpenMgr.GetInstance():isOpenSystem(getProxy(PlayerProxy):getRawData().level, "TechnologyMediator") and not pg.NewStoryMgr.GetInstance():IsPlayed("FANGAN1") then
		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.SELTECHNOLOGY)
		pg.NewStoryMgr.GetInstance():Play("FANGAN1", function ()
		end, true)

		return false
	end

	return true
end

return slot0
