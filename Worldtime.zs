/*
  Minecraft recipes at a specified time
  china：我的世界内的时间合成
*/
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingInventory;

import crafttweaker.world.IWorld;


/*
  One day of minecraft time is 24000tick = 20 minutes of real time
  china：我的世界里的一天是24000刻，是现实时间的20分钟
  mc-day = worldtim/24000
  mc-hour = (worldtime/1000+6) % 24
  mc-minute = (worldtime %1000) * 60 /1000
*/
// delete this recipes about out. china：删除输出的合成
recipes.remove(out);
recipes.addShaped(                    //Orderly reicipes. china： 有序合成
	"DIM-1 the end recipes and mc-hour 10-12 and 22-0",            //recipes name. china: 合成名称注释
	out,                                //recipes out. china: 合成输出
	[
		[<minecraft:end_crystal>, <improvedbackpacks:tanned_leather>, <minecraft:end_crystal>], 
		[<improvedbackpacks:tanned_leather>, <minecraft:ender_chest>, <improvedbackpacks:tanned_leather>], 
		[<minecraft:end_crystal>, <improvedbackpacks:tanned_leather>, <minecraft:end_crystal>]
	],                                                 //recipes ins. china： 合成的输入材料 
	function(out,ins,info) {                           //funcion
		val world as IWorld = info.player.world;    //valuable
		return world.dimension == -1 & (world.getWorldTime()/1000+6) % 12 >= 10 ? out : null;      
    //if world.dimension == -1 & (world.getWorldTime()/1000+6) % 12 >= 10 {return} else{out:null} china：等式成立合成物品，否则不合成
	},
	null
);
