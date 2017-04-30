import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import haxe.ui.core.Component;

extern class PreviewUtils
{
	public static function getData () : String;
}

class Main
{
	public static function main ()
	{
		Toolkit.init();

		var app = new HaxeUIApp();

		app.ready(function() {
			var main:Component = Toolkit.componentFromString(PreviewUtils.getData());
			app.addComponent(main);
			app.start();
		});
	}
}