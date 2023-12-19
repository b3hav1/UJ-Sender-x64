require('parser')

-- Put your Tenor API token below
local token = 'Tenor API Key'
local command = '/gif'
local limit = 100

local regex = '<img src="https://media([^"]+)"'

-- Sends random image URL from search query
local function send_image(query)
    query = string.gsub(query, ' ', '_')
    local url = 'https://tenor.googleapis.com/v2/search?q=' .. query .. '&key=' .. token .. '&limit=' .. limit
    get_results(url, function(data)
        if data then
            -- Create image URL
            local image = data[math.random(#data)]
            url = 'https://tenor.com/view/' .. image['id']
            -- Convert URL in HTML
            get_body(url, function(body)
                if body then parse(body, regex, function(source)
                        if source then RunConsoleCommand('say', 'https://media' .. source) end
                    end)
                end
            end)
        end
    end)
end

-- Returns function on chat command
local function process_chat(player, message)
    if string.sub(message, 1, string.len(command)) == command then    -- if '/call' (has length 5) then
        local query = string.sub(message, string.len(command) + 2)    -- query = after '/call' + space
        send_image(query); return ''
    end
end

hook.Add('PlayerSay', 'ProcessChat', process_chat)