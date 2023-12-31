slot0 = class("AnniversaryIslandSpringTask2023Mediator", import("view.base.ContextMediator"))
slot0.SUBMIT_TASK = "activity submit task "
slot0.TASK_GO = "activity task go "
slot0.SHOW_DETAIL = "activity task show detail"
slot0.SHOW_SUBMIT_WINDOW = "AnniversaryIslandSpringTask2023Mediator:SHOW_SUBMIT_WINDOW"

function slot0.register(slot0)
	slot0:bind(uv0.SUBMIT_TASK, function (slot0, slot1)
		uv0:sendNotification(GAME.AVATAR_FRAME_AWARD, {
			act_id = slot1.actId,
			task_ids = {
				slot1.id
			}
		})
	end)
	slot0:bind(uv0.TASK_GO, function (slot0, slot1)
		uv0:sendNotification(GAME.TASK_GO, {
			taskVO = slot1.taskVO
		})
	end)
	slot0:bind(uv0.SHOW_DETAIL, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = WorkBenchItemDetailMediator,
			viewComponent = WorkBenchItemDetailLayer,
			data = {
				material = slot1
			}
		}))
	end)
	slot0:bind(uv0.SHOW_SUBMIT_WINDOW, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = AnniversaryIslandSpringTaskSubmitWindowMediator,
			viewComponent = AnniversaryIslandSpringTaskSubmitWindow,
			data = {
				task = slot1
			}
		}))
	end)
end

function slot0.listNotificationInterests(slot0)
	return {
		AnniversaryIslandSpringTask2023Mediator.SUBMIT_TASK,
		GAME.SUBMIT_AVATAR_TASK_DONE,
		ActivityProxy.ACTIVITY_UPDATED
	}
end

function slot0.handleNotification(slot0, slot1)
	if slot1:getName() == AnniversaryIslandSpringTask2023Mediator.SUBMIT_TASK then
		slot0.viewComponent:emit(AnniversaryIslandSpringTask2023Mediator.SUBMIT_TASK, slot1:getBody())
	elseif slot2 == GAME.SUBMIT_AVATAR_TASK_DONE then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards, function ()
			existCall(uv0.callback)

			slot0 = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_HOTSPRING_2)
			slot3 = getProxy(ActivityTaskProxy):getTaskVOsByActId(slot0:GetConfigID())

			if _.all(slot0:GetUnlockTaskIds(), function (slot0)
				return _.detect(uv0, function (slot0)
					return slot0:GetConfigID() == uv0
				end) and slot1:isOver()
			end) then
				uv1:sendNotification(GAME.CHANGE_SCENE, SCENE.ANNIVERSARY_ISLAND_SPRING)
			end
		end)
	elseif slot2 == ActivityProxy.ACTIVITY_UPDATED then
		slot0.viewComponent:BuildTaskVOs()
		slot0.viewComponent:UpdateView()
	end
end

function slot0.remove(slot0)
end

return slot0
