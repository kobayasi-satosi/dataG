package
{
	import flash.events.MouseEvent;
	
	import mx.controls.CheckBox;
	
	public class CheckBoxHeaderRenderer extends CheckBox
	{
		public var stateHost:Object;
		public var stateProperty:String;
		
		/**
		 * デフォルトコンストラクタ
		 */
		public function CheckBoxHeaderRenderer() {
			super();
		}
		
		/**
		 * data set (Override)
		 */
		override public function set data(value:Object):void {
			selected = stateHost[stateProperty];
		}
		
		/**
		 * クリック イベント(Override)
		 */
		override protected function clickHandler(event:MouseEvent):void {
			super.clickHandler(event);
			stateHost[stateProperty] = selected;
		}
	}
}