local S = minetest.get_translator("more_mclx_fences")

for wood, defs in pairs(mcl_trees.woods) do
	local groups = {
		handy = 1, axey = 1, material_wood = 1, fence_wood = 1,
		flammable = 3, fire_encouragement = 5, fire_flammability = 20
	}

	local basedefs = minetest.registered_nodes["mcl_trees:bark_"..wood]

	if defs.bark and defs.bark.groups then
		groups = defs.bark.groups
		groups.fence_wood = 1
	end

	mcl_fences.register_fence_and_fence_gate_def("wood_"..wood, {
		groups = groups,
		sounds = mcl_sounds.node_sound_wood_defaults(),
		tiles = basedefs.tiles,
		_on_axe_place = mcl_trees.strip_tree,
		_mcl_blast_resistance = basedefs._mcl_blast_resistance,
		_mcl_hardness = basedefs._mcl_hardness,
		_mcl_burntime = basedefs._mcl_burntime,
		_mcl_fences_baseitem = "mcl_trees:tree_"..wood
	}, {
		description = S("@1 Bark Fence", defs.readable_name),
		connects_to = { "group:fence_wood", "group:solid" },
		_mcl_stripped_variant = "mcl_fences:wood_stripped_"..wood,
		_mcl_fences_output_amount = 8
	}, {
		description = S("@1 Bark Fence Gate", defs.readable_name),
		_mcl_stripped_variant = "mcl_fences:wood_stripped_"..wood.."_gate",
		_mcl_fences_output_amount = 4
	})

	basedefs = minetest.registered_nodes["mcl_trees:bark_stripped_"..wood]

	mcl_fences.register_fence_and_fence_gate_def("wood_stripped_"..wood, {
		groups = groups,
		sounds = mcl_sounds.node_sound_wood_defaults(),
		tiles = basedefs.tiles,
		_mcl_blast_resistance = basedefs._mcl_blast_resistance,
		_mcl_hardness = basedefs._mcl_hardness,
		_mcl_burntime = basedefs._mcl_burntime,
		_mcl_fences_baseitem = "mcl_trees:stripped_"..wood
	}, {
		description = S("Stripped @1 Wood Fence", defs.readable_name),
		connects_to = { "group:fence_wood", "group:solid" },
		_mcl_fences_output_amount = 8
	}, {
		description = S("Stripped @1 Wood Fence Gate", defs.readable_name),
		_mcl_fences_output_amount = 4
	})
end

dofile(minetest.get_modpath("more_mclx_fences").."/compat.lua")
