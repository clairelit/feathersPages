﻿package  {
	import feathers.controls.PanelScreen;
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.controls.Button;
	import Utils;

	import starling.events.Event;
	import starling.display.Button;
	
	public class ScreenB extends PanelScreen{

		public function ScreenB() {
			// constructor code
			trace("An object of ScreenB has been created");
			super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);

		}
		
		protected function initializeHandler():void
		{
			trace("ScreenB object initialized");

			this.headerProperties.title = "Screen B";

			var theLayout: VerticalLayout = new VerticalLayout();

			theLayout.gap = 10;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			theLayout.manageVisibility = true;

			this.layout = theLayout;

			this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true;
			
			var st1:ScrollText = new ScrollText();
			st1.text = Utils.LOREM_IPSUM;
			st1.height = 200;
			this. addChild(st1);
			
			var st2:ScrollText = new ScrollText();
			st2.text = Utils.LOREM_IPSUM;
			st1.height = 100;
			this.addChild(st2);
			
			var screenAButton:Button;
			screenAButton = new Button();
			screenAButton.label = "Screen A";
			
			this.addChild(screenAButton);
			
			screenAButton.addEventListener(Event.TRIGGERED, handleScreenAButtonClick);
		}
		
		private function handleScreenAButtonClick(event:Event):void
		
		{
			this.dispatchEventWith("showScreenA");
		}

	}
	
}
