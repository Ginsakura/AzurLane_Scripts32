return {
	{
		Image = "doa_virtual_buff",
		IsVirtualIcon = true,
		CheckExist = function ()
			if not getProxy(ActivityProxy):getActivityById(ActivityConst.DOA_PT_ID) then
				return false
			end

			if not slot0:isEnd() and ActivityPtData.New(slot0):isInBuffTime() then
				return true
			end

			return false
		end
	},
	CurrentIconList = {
		1
	}
}
