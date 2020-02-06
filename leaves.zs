/*
1.12.2 imitate 1.14 Example of striking leaves and falling sticks
china:1.12.2模仿1.14 树叶掉落木棍的例子
*/
import crafttweaker.item.WeightedItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.item.IItemStack;



events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {            
//event info BlockHarvestDropsEvent   china:这个时间是方块采掘掉落事件
	var blockID as string = event.block.definition.id;                              
  // blockID is string about event.block.definition.id china：这个方块id赋值为方块掉落id，属于数值型
  
	if(event.silkTouch) return;
  
	if(blockID == "minecraft:leaves") {
		event.drops = leaveDrops;
	}
});

static leaveDrops as WeightedItemStack[] = [
	<minecraft:stick> % 20,                  //20% get stick
	<minecraft:sapling> % 30,                //30% get spling
];
