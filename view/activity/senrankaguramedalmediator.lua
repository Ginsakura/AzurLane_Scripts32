slot0 = class("SenrankaguraMedalMediator", import("..base.ContextMediator"))
slot0.SUBMIT_TASK_ALL = "activity submit task all"
slot0.SUBMIT_TASK = "activity submit task "
slot0.TASK_GO = "task go "

function slot0.register(slot0)
	slot0:bind(uv0.SUBMIT_TASK, function (slot0, slot1)
		uv0.displayAwards = {}

		uv0:sendNotification(GAME.SUBMIT_TASK, slot1, function (slot0)
			if not slot0 then
				-- Nothing
			end
		end)
	end)
	slot0:bind(uv0.SUBMIT_TASK_ALL, function (slot0, slot1)
		slot3 = false

		for slot8 = 1, #slot1 do
			slot9 = getProxy(TaskProxy):getTaskById(slot1[slot8])

			table.insert({}, slot9)

			if not slot9 then
				return
			end

			if not slot3 and slot9:IsOverflowShipExpItem() then
				slot3 = true

				pg.MsgboxMgr.GetInstance():ShowMsgBox({
					content = i18n("player_expResource_mail_fullBag"),
					onYes = function ()
						uv0.displayAwards = {}

						uv0:sendNotification(GAME.SUBMIT_TASK_ONESTEP, {
							resultList = uv1
						})
					end,
					onNo = function ()
					end
				})
			end
		end

		if not slot3 then
			uv0.displayAwards = {}

			uv0:sendNotification(GAME.SUBMIT_TASK_ONESTEP, {
				resultList = slot4
			})
		end
	end)
	slot0:bind(uv0.TASK_GO, function (slot0, slot1)
		uv0:sendNotification(GAME.TASK_GO, {
			taskVO = slot1
		})
	end)
end

function slot0.listNotificationInterests(slot0)
	return {
		GAME.SUBMIT_TASK_DONE,
		ActivityProxy.ACTIVITY_UPDATED,
		ActivityProxy.ACTIVITY_SHOW_AWARDS,
		GAME.MEMORYBOOK_UNLOCK_DONE,
		GAME.MEMORYBOOK_UNLOCK_AWARD_DONE
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.SUBMIT_TASK_DONE then
		if #slot3 > 0 then
			for slot7 = 1, #slot3 do
				if slot3[slot7].configId ~= slot0.viewComponent.ptId then
					table.insert(slot0.displayAwards, slot3[slot7])
				end
			end
		end

		slot0:checkShowTaskAward()
	elseif slot2 == GAME.ACTIVITY_UPDATED then
		-- Nothing
	elseif slot2 == GAME.MEMORYBOOK_UNLOCK_DONE then
		slot0.viewComponent:updateUI()
	elseif slot2 == ActivityProxy.ACTIVITY_SHOW_AWARDS then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards, slot3.callback)
		slot0.viewComponent:updateUI()
	elseif slot2 == GAME.MEMORYBOOK_UNLOCK_AWARD_DONE then
		-- Nothing
	end
end

function slot0.checkShowTaskAward(slot0)
	if #slot0.displayAwards > 0 then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot0.displayAwards)
	end

	slot0.viewComponent:updateUI()

	slot0.displayAwards = {}
end

return slot0
