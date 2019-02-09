local MOD = {}

mods["rifle_unification_hack"] = MOD

function MOD.on_new_player_created()
    game.add_msg("New player starting with Rifle Unification Hack")
    unify_skills()
end

function MOD.on_skill_increased()
    unify_skills()
end

function unify_skills()
    game.add_msg("Equalising rifle and smg skills")


    local rifle_skill = player:get_skill_level(skill_id("rifle"))
    local smg_skill = player:get_skill_level(skill_id("smg"))
    
    if rifle_skill < smg_skill then
            player:set_skill_level(skill_id("rifle"), smg_skill )
            game.add_msg("Raising rifle skill to "..tostring(smg_skill))
    end
    
    if rifle_skill > smg_skill then
            player:set_skill_level(skill_id("smg"), rifle_skill)
            game.add_msg("Raising SMG skill to "..tostring(rifle_skill))
    end
    
end
