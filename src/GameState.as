package
{
	import org.flixel.*;

	public class GameState extends FlxState
	{
        	[Embed(source="data/beep.mp3")] protected var Beep:Class;

		override public function create():void
		{
			FlxG.bgColor = 0xFF000000;
			var t:FlxText;
			t = new FlxText(0,FlxG.height/2-20,FlxG.width,"Hello World");
			t.size = 32;
			t.alignment = "center";
			add(t);

            		t = new FlxText(FlxG.width/2-100,FlxG.height-30,200,"Click to play sound effect");
			t.size = 16;
			t.alignment = "center";
			add(t);
			
			FlxG.mouse.show();
		}

		override public function update():void
		{
			super.update();

			if(FlxG.mouse.justPressed())
				FlxG.play(Beep,0.35);
		}
	}
}
