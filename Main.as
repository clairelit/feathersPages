package {

	import starling.display.Sprite;
	import starling.events.Event;
	import feathers.controls.Drawers;

	import feathers.themes.MinimalMobileTheme;
	import feathers.themes.MetalWorksMobileTheme;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.controls.Screen;
	import feathers.controls.ScrollContainer;
	import feathers.events.FeathersEventType;
	import flash.display.Screen;

	public class Main extends ScreenNavigator {

		public function Main() {
			// constructor code
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}

		private function initializeHandler(event: Event): void {
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);

			new MetalWorksMobileTheme();

			//var homeScreen:Screen = new HomeScreen();
			
			//var screenNavItem1: ScreenNavigatorItem = new ScreenNavigatorItem(homeScreen);

			//this.addScreen("homeScreen", screenNavItem1);

			//feathers.controls.PanelScreen;
			var screenA: ScreenA = new ScreenA();

			var screenNavItem1: ScreenNavigatorItem = new ScreenNavigatorItem(screenA, {
				"showScreenB": "screenB"
			});
			this.addScreen("screenA", screenNavItem1);

			var screenB: ScreenB = new ScreenB();
			var screenNavItem2: ScreenNavigatorItem = new ScreenNavigatorItem(screenB, {
				"showScreenA": "screenA"
			});
			this.addScreen("screenB", screenNavItem2);

			this.showScreen("screenA");

		}

	}

}