 
import crafttweaker.item.IItemStack;
import mods.futuremc.Stonecutter;

// Remove Recipes
val inputsToRemove = [
	<minecraft:stone>,
	<minecraft:stonebrick>,
	<minecraft:stonebrick:1>,
	<minecraft:stonebrick:2>,
	<minecraft:stonebrick:3>,
	<minecraft:prismarine>,
	<minecraft:mossy_cobblestone>
] as IItemStack[];
for inputItem in inputsToRemove { Stonecutter.removeAllOutputsForInput(inputItem); }

// Stone
addStonecutterRecipes(
	[<minecraft:stonebrick:1>],
	[<quark:stonebrick_mossy_slab> * 2, <quark:stonebrick_mossy_stairs>, <quark:stonebrick_mossy_wall>]);
addStonecutterRecipes(
	[<minecraft:stonebrick:1>, <minecraft:stonebrick:2>],
	[<minecraft:stone>, <minecraft:stonebrick>, <minecraft:stonebrick:3>]);
addCyclicRecipes([<minecraft:stone>, <minecraft:stonebrick>, <minecraft:stonebrick:3>]);
addStonecutterRecipes(
	[<minecraft:stone>, <minecraft:stonebrick>, <minecraft:stonebrick:1>, <minecraft:stonebrick:2>, <minecraft:stonebrick:3>],
	[<minecraft:stone_slab> * 2, <minecraft:stone_slab:5> * 2, <quark:stone_stairs>, <minecraft:stone_brick_stairs>, <quark:stone_wall>, <quark:stonebrick_wall>, <quark:stone_speleothem> * 2]);
	
// Granite / Diorite / Andesite
addBlockCyclingStonecutterRecipes(
	[<minecraft:stone:1>, <minecraft:stone:2>, <quark:world_stone_bricks>, <quark:world_stone_carved>, <quark:world_stone_pavement>],
	[<quark:stone_granite_slab> * 2, <quark:stone_granite_bricks_slab> * 2, <quark:stone_granite_stairs>, <quark:stone_granite_bricks_stairs>, <quark:stone_granite_wall>, <quark:stone_granite_bricks_wall>, <quark:granite_speleothem>]);
addBlockCyclingStonecutterRecipes(
	[<minecraft:stone:3>, <minecraft:stone:4>, <quark:world_stone_bricks:1>, <quark:world_stone_carved:1>, <quark:world_stone_pavement:1>],
	[<quark:stone_diorite_slab> * 2, <quark:stone_diorite_bricks_slab> * 2, <quark:stone_diorite_stairs>, <quark:stone_diorite_bricks_stairs>, <quark:stone_diorite_wall>, <quark:stone_diorite_bricks_wall>, <quark:diorite_speleothem>]);
addBlockCyclingStonecutterRecipes(
	[<minecraft:stone:5>, <minecraft:stone:6>, <quark:world_stone_bricks:2>, <quark:world_stone_carved:2>, <quark:world_stone_pavement:2>],
	[<quark:stone_andesite_slab> * 2, <quark:stone_andesite_bricks_slab> * 2, <quark:stone_andesite_stairs>, <quark:stone_andesite_bricks_stairs>, <quark:stone_andesite_wall>, <quark:stone_andesite_bricks_wall>, <quark:andesite_speleothem>]);

// Mossy Cobblestone
Stonecutter.addOutputs(<minecraft:mossy_cobblestone>, <quark:cobblestone_mossy_slab> * 2, <quark:cobblestone_mossy_stairs>, <minecraft:cobblestone_wall:1>);
	
// Sandstone (Normal/Red/Soul)
addBlockCyclingStonecutterRecipes(
	[<minecraft:sandstone>, <minecraft:sandstone:1>, <minecraft:sandstone:2>, <quark:sandstone_new>, <quark:sandstone_new:1>],
	[<minecraft:stone_slab:1> * 2, <quark:sandstone_smooth_slab> * 2, <quark:sandstone_bricks_slab> * 2, <minecraft:sandstone_stairs>, <quark:sandstone_bricks_stairs>, <quark:sandstone_wall>]);
addBlockCyclingStonecutterRecipes(
	[<minecraft:red_sandstone>, <minecraft:red_sandstone:1>, <minecraft:red_sandstone:2>, <quark:sandstone_new:2>, <quark:sandstone_new:3>],
	[<minecraft:stone_slab2> * 2, <quark:red_sandstone_smooth_slab> * 2, <quark:red_sandstone_bricks_slab> * 2, <minecraft:red_sandstone_stairs>, <quark:red_sandstone_bricks_stairs>, <quark:red_sandstone_wall>]);
addBlockCyclingStonecutterRecipes(
	[<quark:soul_sandstone>, <quark:soul_sandstone:1>, <quark:soul_sandstone:2>, <quark:sandstone_new:4>, <quark:sandstone_new:5>],
	[<quark:soul_sandstone_slab> * 2, <quark:soul_sandstone_smooth_slab> * 2, <quark:soul_sandstone_bricks_slab> * 2, <quark:soul_sandstone_stairs>, <quark:soul_sandstone_bricks_stairs>, <quark:soul_sandstone_wall>]);
	
// Prismarine
Stonecutter.addOutputs(<minecraft:prismarine>, <quark:prismarine_slab> * 2, <quark:prismarine_stairs>, <quark:prismarine_rough_wall>);
Stonecutter.addOutputs(<minecraft:prismarine:1>, <quark:prismarine_bricks_slab> * 2, <quark:prismarine_bricks_stairs>, <quark:prismarine_bricks_wall>);
Stonecutter.addOutputs(<minecraft:prismarine:2>, <quark:prismarine_dark_slab> * 2, <quark:prismarine_dark_stairs>, <quark:dark_prismarine_wall>);
Stonecutter.addOutputs(<quark:elder_prismarine>, <quark:elder_prismarine_slab> * 2, <quark:elder_prismarine_stairs>, <quark:elder_prismarine_wall>);
Stonecutter.addOutputs(<quark:elder_prismarine:1>, <quark:elder_prismarine_bricks_slab> * 2, <quark:elder_prismarine_bricks_stairs>, <quark:elder_prismarine_bricks_wall>);
Stonecutter.addOutputs(<quark:elder_prismarine:2>, <quark:elder_prismarine_dark_slab> * 2, <quark:elder_prismarine_dark_stairs>, <quark:elder_prismarine_dark_wall>);
	
// Quartz
addBlockCyclingStonecutterRecipes(
	[<minecraft:quartz_block>, <minecraft:quartz_block:1>, <minecraft:quartz_block:2>],
	[<minecraft:stone_slab:7> * 2, <minecraft:quartz_stairs>, <quark:quartz_wall>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypedark>, <botania:quartztypedark:1>, <botania:quartztypedark:2>],
	[<botania:quartzslabdarkhalf> * 2, <botania:quartzstairsdark>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypemana>, <botania:quartztypemana:1>, <botania:quartztypemana:2>],
	[<botania:quartzslabmanahalf> * 2, <botania:quartzstairsmana>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypeblaze>, <botania:quartztypeblaze:1>, <botania:quartztypeblaze:2>],
	[<botania:quartzslabblazehalf> * 2, <botania:quartzstairsblaze>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypelavender>, <botania:quartztypelavender:1>, <botania:quartztypelavender:2>],
	[<botania:quartzslablavenderhalf> * 2, <botania:quartzstairslavender>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypered>, <botania:quartztypered:1>, <botania:quartztypered:2>],
	[<botania:quartzslabredhalf> * 2, <botania:quartzstairsred>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypeelf>, <botania:quartztypeelf:1>, <botania:quartztypeelf:2>],
	[<botania:quartzslabelfhalf> * 2, <botania:quartzstairself>]);
addBlockCyclingStonecutterRecipes(
	[<botania:quartztypesunny>, <botania:quartztypesunny:1>, <botania:quartztypesunny:2>],
	[<botania:quartzslabsunnyhalf> * 2, <botania:quartzstairssunny>]);
	
// Purpur
addBlockCyclingStonecutterRecipes(
	[<minecraft:purpur_block>, <minecraft:purpur_pillar>],
	[<minecraft:purpur_slab> * 2, <minecraft:purpur_stairs>, <quark:purpur_block_wall>]);

// Bricks
addBlockCyclingStonecutterRecipes(
	[<minecraft:brick_block>],
	[<minecraft:stone_slab:4> * 2, <minecraft:brick_stairs>, <quark:brick_wall>]);
addBlockCyclingStonecutterRecipes(
	[<minecraft:red_nether_brick>],
	[<quark:red_nether_brick_slab> * 2, <quark:red_nether_brick_stairs>, <futuremc:red_nether_brick_wall>]);

// End Stone
addBlockCyclingStonecutterRecipes(
	[<minecraft:end_stone>, <minecraft:end_bricks>],
	[<quark:end_bricks_slab> * 2, <quark:end_bricks_stairs>, <quark:end_bricks_wall>]);

// Livingrock / Shimmerrock
addCyclicRecipes([<botania:livingrock>, <botania:livingrock:1>, <botania:livingrock:4>]);
addStonecutterRecipes(
	[<botania:livingrock:2>, <botania:livingrock:3>],
	[<botania:livingrock>, <botania:livingrock:1>, <botania:livingrock:4>]);
addStonecutterRecipes(
	[<botania:livingrock>, <botania:livingrock:1>, <botania:livingrock:2>, <botania:livingrock:3>, <botania:livingrock:4>],
	[<botania:livingrock0slab> * 2, <botania:livingrock1slab> * 2, <botania:livingrock0stairs>, <botania:livingrock1stairs>, <botania:livingrock0wall>]);

// Metamorphic Cobblestone
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:8>],
	[<botania:biomestonea8slab> * 2, <botania:biomestonea8stairs>, <botania:biomestonea0wall:0>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:9>],
	[<botania:biomestonea9slab> * 2, <botania:biomestonea9stairs>, <botania:biomestonea0wall:1>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:10>],
	[<botania:biomestonea10slab> * 2, <botania:biomestonea10stairs>, <botania:biomestonea0wall:2>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:11>],
	[<botania:biomestonea11slab> * 2, <botania:biomestonea11stairs>, <botania:biomestonea0wall:3>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:12>],
	[<botania:biomestonea12slab> * 2, <botania:biomestonea12stairs>, <botania:biomestonea0wall:4>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:13>],
	[<botania:biomestonea13slab> * 2, <botania:biomestonea13stairs>, <botania:biomestonea0wall:5>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:14>],
	[<botania:biomestonea14slab> * 2, <botania:biomestonea14stairs>, <botania:biomestonea0wall:6>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:15>],
	[<botania:biomestonea15slab> * 2, <botania:biomestonea15stairs>, <botania:biomestonea0wall:7>]);

// Metamorphic Stone
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:0>, <botania:biomestoneb:0>, <botania:biomestoneb:8>],
	[<botania:biomestonea0slab> * 2, <botania:biomestoneb0slab> * 2, <botania:biomestonea0stairs>, <botania:biomestoneb0stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:1>, <botania:biomestoneb:1>, <botania:biomestoneb:9>],
	[<botania:biomestonea1slab> * 2, <botania:biomestoneb1slab> * 2, <botania:biomestonea1stairs>, <botania:biomestoneb1stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:2>, <botania:biomestoneb:2>, <botania:biomestoneb:10>],
	[<botania:biomestonea2slab> * 2, <botania:biomestoneb2slab> * 2, <botania:biomestonea2stairs>, <botania:biomestoneb2stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:3>, <botania:biomestoneb:3>, <botania:biomestoneb:11>],
	[<botania:biomestonea3slab> * 2, <botania:biomestoneb3slab> * 2, <botania:biomestonea3stairs>, <botania:biomestoneb3stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:4>, <botania:biomestoneb:4>, <botania:biomestoneb:12>],
	[<botania:biomestonea4slab> * 2, <botania:biomestoneb4slab> * 2, <botania:biomestonea4stairs>, <botania:biomestoneb4stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:5>, <botania:biomestoneb:5>, <botania:biomestoneb:13>],
	[<botania:biomestonea5slab> * 2, <botania:biomestoneb5slab> * 2, <botania:biomestonea5stairs>, <botania:biomestoneb5stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:6>, <botania:biomestoneb:6>, <botania:biomestoneb:14>],
	[<botania:biomestonea6slab> * 2, <botania:biomestoneb6slab> * 2, <botania:biomestonea6stairs>, <botania:biomestoneb6stairs>]);
addBlockCyclingStonecutterRecipes(
	[<botania:biomestonea:7>, <botania:biomestoneb:7>, <botania:biomestoneb:15>],
	[<botania:biomestonea7slab> * 2, <botania:biomestoneb7slab> * 2, <botania:biomestonea7stairs>, <botania:biomestoneb7stairs>]);

// Portuguese Pavement
Stonecutter.addOutputs(<botania:pavement:0>, <botania:pavement0slab> * 2, <botania:pavement0stairs>);
Stonecutter.addOutputs(<botania:pavement:1>, <botania:pavement1slab> * 2, <botania:pavement1stairs>);
Stonecutter.addOutputs(<botania:pavement:2>, <botania:pavement2slab> * 2, <botania:pavement2stairs>);
Stonecutter.addOutputs(<botania:pavement:3>, <botania:pavement3slab> * 2, <botania:pavement3stairs>);
Stonecutter.addOutputs(<botania:pavement:4>, <botania:pavement4slab> * 2, <botania:pavement4stairs>);
Stonecutter.addOutputs(<botania:pavement:5>, <botania:pavement5slab> * 2, <botania:pavement5stairs>);

// Shimmerrock
Stonecutter.addOutputs(<botania:shimmerrock>, <botania:shimmerrock0slab> * 2, <botania:shimmerrock0stairs>);

// Azulejo
addCyclicRecipes([<botania:custombrick:0>, <botania:custombrick:1>, <botania:custombrick:2>, <botania:custombrick:3>, <botania:custombrick:4>, <botania:custombrick:5>, <botania:custombrick:6>, <botania:custombrick:7>, <botania:custombrick:8>, <botania:custombrick:9>, <botania:custombrick:10>, <botania:custombrick:11>, <botania:custombrick:12>, <botania:custombrick:13>, <botania:custombrick:14>, <botania:custombrick:15>]);

/*
addBlockCyclingStonecutterRecipes(
	[],
	[]);
*/
	
// ****************
// HELPER FUNCTIONS
// ****************

function addCyclicRecipes(items as IItemStack[]) {
	for i, itemA in items {
		for j, itemB in items {
			if (i != j) {
				Stonecutter.addOutput(itemA, itemB);
			}
		}
	}
}

function addStonecutterRecipes(input as IItemStack[], output as IItemStack[]) {
	for inputItem in input {
		for outputItem in output {
			Stonecutter.addOutput(inputItem, outputItem);
		}
	}
}
	
function addBlockCyclingStonecutterRecipes(input as IItemStack[], output as IItemStack[]) {
	for inputItem in input { Stonecutter.removeAllOutputsForInput(inputItem); }
	addCyclicRecipes(input);
	addStonecutterRecipes(input, output);
}
	
	
	
	
	
	
	
	
	
	
	
	