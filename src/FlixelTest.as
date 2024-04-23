package
{
	import org.flixel.*;
	[SWF(width="720", height="720", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class FlixelTest extends FlxGame
	{
		public function FlixelTest()
		{
			super(720,720,GameState);
		}
	}
}