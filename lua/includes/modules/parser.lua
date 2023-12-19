-- Returns data table from URL
function get_results(url, callback)
    http.Fetch(url, function(body, size, head, code)
        if code == 200 then
            local data = get_table(body)['results']
            if data then callback(data)
            else error('Failed to get results') end
        else error('HTTP Error:', code) end
    end)
end

-- Returns URL as HTML
function get_body(url, callback)
    http.Fetch(url, function(body, size, head, code)
        if code == 200 then callback(body)
        else error('HTTP Error:', code) end
    end)
end

-- Returns string by regex
function parse(body, regex, callback)
    local source = string.match(body, regex)
    if source then callback(source)
    else error('No matches found') end
end

-- Returns JSON as data table
function get_table(data)
    if data then return util.JSONToTable(data)
    else error('Failed to convert to JSON') end
end

-- Returns data table as JSON
function get_json(data)
    if data then return util.TableToJSON(data)
    else error('Failed to convert to table') end
end