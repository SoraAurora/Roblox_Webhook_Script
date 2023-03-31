HttpService = game:GetService("HttpService")
Webhook_URL = "" -- webhook url

local response = request({
    Url = Webhook_URL,
    Method = "POST", 
    Headers = {
		['Content-Type'] = 'application/json'
	},
    Body = HttpService:JSONEncode({
		['content'] = "",
		['embeds'] = {{
			["title"] = "",
			["description"] = "",
			["type"] = "rich",
			["color"] = tonumber(0xffffff),
			["fields"] = {
				{
					["name"] = "",
					["value"] = "",
					["inline"] = true
				}
			}
		
		}}
	}
	)
})
