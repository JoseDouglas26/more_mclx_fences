local names = {
    ["acacia"] = { "acaciatree", "stripped_acacia" },
    ["birch"] = { "birchtree", "stripped_birch" },
    ["cherry_blossom"] = { "cherrytree", "stripped_cherrytree" },
    ["crimson"] = { "crimson_hyphae", "stripped_crimson_hyphae" },
    ["dark_oak"] = { "darktree", "stripped_dark_oak" },
    ["jungle"] = { "jungletree", "stripped_jungle" },
    ["mangrove"] = { "mangrove_tree", "mangrove_stripped" },
    ["oak"] = { "tree", "stripped_oak" },
    ["spruce"] = { "sprucetree", "stripped_spruce" },
    ["warped"] = { "warped_hyphae", "stripped_warped_hyphae" }
}

for mcl, vl in pairs(names) do
    minetest.register_alias("mclx_fences:"..vl[1].."_bark", "mcl_fences:wood_"..mcl)
    minetest.register_alias("mclx_fences:"..vl[1].."_bark_gate", "mcl_fences:wood_"..mcl.."_gate")
    minetest.register_alias("mclx_fences:"..vl[2].."_bark", "mcl_fences:wood_stripped_"..mcl)
    minetest.register_alias("mclx_fences:"..vl[2].."_bark_gate", "mcl_fences:wood_stripped_"..mcl.."_gate")
end
