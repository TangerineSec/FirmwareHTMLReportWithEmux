module("luci.common",package.seeall)

function browser()
    -- 判断浏览器
    local cdata = luci.http.getenv('HTTP_USER_AGENT')
    local Agents = {'Android','iPhone','SymbianOS','Windows Phone','iPad','iPod'}
    local flag = true
    for i,v in ipairs(Agents) do
        if string.find(cdata,Agents[i]) then
            flag = false
            break
        end     
    end

    return flag    
end

function split(szFullString, szSeparator)  
    local nFindStartIndex = 1  
    local nSplitIndex = 1  
    local nSplitArray = {}
    while true do  
       local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
       if not nFindLastIndex then  
        nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
        break  
       end  
       nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
       nFindStartIndex = nFindLastIndex + string.len(szSeparator)
       nSplitIndex = nSplitIndex + 1  
    end  
    return nSplitArray  
end

--过滤掉不可打印字符
function trim(str)
	require "luci.http"
	str = luci.http.urlencode(str)
	new_str = string.gsub(str, "%%0a", "")
  new_str = luci.http.urldecode(new_str)

	return new_str
end