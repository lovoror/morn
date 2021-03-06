/**
 * Version 0.9.0 https://github.com/yungzhu/morn
 * Feedback yungzhu@gmail.com http://weibo.com/newyung
 * Copyright 2012, yungzhu. All rights reserved.
 * This program is free software. You can redistribute and/or modify it
 * in accordance with the terms of the accompanying license agreement.
 */
package morn.core.components {
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**单选框按钮*/
	public class RadioButton extends Button {
		private var _value:Object;
		
		public function RadioButton(skin:String = null, label:String = "") {
			super(skin, label);
		}
		
		override protected function preinitialize():void {
			super.preinitialize();
			_toggle = false;
		}
		
		override protected function initialize():void {
			super.initialize();
			_btnLabel.autoSize = "left";
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		override protected function changeLabelSize():void {
			_btnLabel.x = _bitmap.width + _labelMargin[0];
			_btnLabel.y = (_bitmap.height - _btnLabel.height) / 2 + _labelMargin[1];
		}
		
		private function onClick(e:Event):void {
			selected = true;
		}
		
		/**组件关联的可选用户定义值*/
		public function get value():Object {
			return _value != null ? _value : name;
		}
		
		public function set value(obj:Object):void {
			_value = obj;
		}
	}
}