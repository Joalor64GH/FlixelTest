package
{
	import org.flixel.*;

	public class GameState extends FlxState
	{
		[Embed(source="data/beep.mp3")] protected var Beep:Class;
		[Embed(source="data/wall.png")] protected var Wall:Class;

		override public function create():void
		{
			var sprite:FlxSprite;
			sprite = new FlxSprite(0, 0, Wall);
			sprite.alignment = "center";
			add(sprite);

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

			if(FlxG.mouse.justPressed()) {
				FlxG.play(Beep,0.35);
			}
		}
	}
}