package 
{
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.ui.Keyboard;

	/**
	 * ...
	 * @author AbanobAtef
	 */
	public class y2 extends MovieClip 
	{
		public var amissilearray:Array;
		private var leftKeyIsDown:Boolean;
		private var rightKeyIsDown:Boolean;
		public var mcplayer:MovieClip;
		var i:int;
		var j:int;
	 public function y2() 
		{
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			amissilearray = new Array();
		}
		private function keyDown(e:KeyboardEvent):void
		{
			if(e.keyCode==37)
			{
				leftKeyIsDown = true;
				playerControl1();
			}
			else if (e.keyCode==39)
			{
				rightKeyIsDown = true;
				playerControl2();
			}
			else if (e.keyCode==37 && e.keyCode==32)
			{
				leftKeyIsDown = true;
				playerControl1();
				firemissicle();
			}
			else if(e.keyCode==32)
			{
				firemissicle();
				
			}
			else if (e.keyCode==39 && e.keyCode==32)
			{
				rightKeyIsDown = true;
				playerControl2();
				firemissicle();
			}
			if (mcplayer.x<(mcplayer.width/2))
			{
				mcplayer.x = mcplayer.width / 2;
				
			}
			if (mcplayer.x>stage.stageWidth-(mcplayer.width/2))
			{
				mcplayer.x = stage.width - (mcplayer.width / 2);
			}
		}
		private function playerControl1():void
		{
			if (leftKeyIsDown==true)
			{
				mcplayer.x =mcplayer.x-10;
			}
		}
		private function playerControl2():void
		{
			if (rightKeyIsDown)
			{
				mcplayer.x += 10;
			}
		}
		private function firemissicle():void 
		{
					var newMissile:mcmissiciles1 = new mcmissiciles1();
					stage.addChild(newMissile);;
					newMissile.x = mcplayer.x;
					newMissile.y  =mcplayer.y;
					amissilearray.push(newMissile);
		}
	
		
	}
}