local urlApi = 'https://www.tianqiapi.com/api/?version=v1&appid=61372628&appsecret=7Yo6FT6Z'
--local urlApi = 'https://www.tianqiapi.com/api/?version=v1'
local menubar = hs.menubar.new()
local menuData = {}

local weaEmoji = {
   lei = '⚡️',
   qing = '☀️晴',
   shachen = '😷沙尘暴',
   wu = '🌫雾',
   xue = '❄️雪',
   yu = '🌧雨',
   yujiaxue = '🌨雨夹雪',
   yun = '⛅️多云',
   zhenyu = '🌧阵雨',
   yin = '☁️阴',
   default = ''
}

function updateMenubar()
	 menubar:setTooltip("天气预报")
    menubar:setMenu(menuData)
end

function getWeather()
   hs.http.doAsyncRequest(urlApi, "GET", nil,nil, function(code, body, htable)
      if code ~= 200 then
         print('get weather error:'..code)
         return
      end
      rawjson = hs.json.decode(body)
      city = rawjson.city
      menuData = {}
      for k, v in pairs(rawjson.data) do
         if k == 1 then
            menubar:setTitle(v.tem)
            titlestr = string.format("%s %s %s 当前🌡️%s， 最低🌡%s， 最高🌡️%s， 空气质量%s， %s", city,weaEmoji[v.wea_img],v.date, v.tem, v.tem2, v.tem1, v.air_level, v.wea)
            item = { title = titlestr }
            table.insert(menuData, item)
            table.insert(menuData, {title = '-'})
         else
            titlestr = string.format("%s %s %s %s 最低🌡️%s， 最高🌡️%s， %s", city, weaEmoji[v.wea_img],v.date, v.week, v.tem2, v.tem1, v.wea)
            item = { title = titlestr }
            table.insert(menuData, item)
         end
      end
      updateMenubar()
   end)
end

menubar:setTitle('⌛')
getWeather()
updateMenubar()
hs.timer.doEvery(3600, getWeather)
hs.timer.doEvery(3600, updateMenubar)
