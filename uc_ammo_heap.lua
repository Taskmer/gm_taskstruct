att.PrintName = "\"HEIAP\" High-Explosive Incendiary Armor-piercing Rounds"
att.AbbrevName = "\"HEIAP\" High-Explosive Incendiary Armor-piercing"
att.SortOrder = 5
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "test."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_ammo"

att.Override_ShootEntity = "arccw_uc_ammo_heap"

att.Mult_Precision = 1.25
att.Mult_Damage = 0.75
att.Mult_Range = 0.50
att.Mult_MuzzleVelocity = 0.50
att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true

att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Hook_Compatible = function(wep)
    local allowedAmmos = {
        ["ar2"] = true,
        ["SniperPenetratedRound"] = true,
        ["357"] = true,
    }
    if !allowedAmmos[wep.Primary.Ammo] then
        return false
    end
end