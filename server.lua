
-- dodaj hexa osób które mają mieć dostęp do komendy
local allowed =
{
    "steam:steamhex1",
    "steam:1100001126010e5"
}

RegisterCommand("cipkion", function(source, args)
    -- Aby włączyć wpisz: /cipkion <ID>

    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
      if args[1] == nil then
        print("^1Błąd")
	return
      end
      local target = args[1]
      TriggerClientEvent("cipki:toggleNUI", target, true)
    end
end)

RegisterCommand("cipkioff", function(source, args)
    -- Aby wyłączyć wpisz: /cipkioff <ID>

    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
        if args[1] == nil then
            print("^1Błąd")
	    return
        end

        local target = args[1]
        TriggerClientEvent("cipki:toggleNUI", target, false)
    end
end)

function checkAllowed(id)
    for k, v in pairs(allowed) do
        if id == v then
	    return true
        end
    end
    return false
end
