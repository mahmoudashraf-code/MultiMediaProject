package 
{
	import flash.display.Sprite;
	import flash.ui.Keyboard;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author AbanobAtef
	 */
	public class mcmissiciles1 extends Sprite 
	{
		
		public function mcmissiciles1() 
		{
			
			addEventListener(Event.ADDED_TO_STAGE,onAdd);
		}
		private function onAdd(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE,onAdd);
			init();
		}
		private function init():void
		{
			addEventListener(Event.ENTER_FRAME, missileLoop);
		}

		private function missileLoop(e:Event):void
		{
			this.y -= 10;
		}
		
		
	}

}