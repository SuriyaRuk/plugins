local _M = { conf = {} }

function _M.get_person(header)
    local person = kong.request.get_header(header)
    -- local zero_person = ngx.req.get_headers()[header]
    --[[if person == nil then
        person = ""
    end]]
    if not person then
        person=nil
    end
    return person
end

function _M.make_love(p0,p1)
    return p0 .. "  love  " .. p1
end
function _M.run(conf)
    _M.conf = conf
    local p0 = _M.get_person(_M.conf.zero_person)
    local p1 = _M.get_person(_M.conf.first_person)
    if p0 == nil or p1 == nil then
        kong.response.exit(401, "UnAuthorized")
    else
        local rug = _M.make_love(p0,p1)
        kong.response.set_header("X-Love", rug)
    end
end

return _M
