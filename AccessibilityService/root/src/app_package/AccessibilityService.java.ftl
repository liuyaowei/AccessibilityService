package ${packageName};

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;

/**
 * 作者：耀威 ;日期：2016-07-14.
 * QQ:1054185214
 * 类作用：辅助功能服务类  手机上的位置：设置--辅助功能：服务
 */

public class ${className} extends AccessibilityService {
    public ${className}() {
    }
	
	 // AccessibilityEvent.java中定义的事件类型 全部是int类型
//  TYPES_ALL_MASK = -1;
//  TYPE_ANNOUNCEMENT = 16384;
//  TYPE_ASSIST_READING_CONTEXT = 16777216;
//  TYPE_GESTURE_DETECTION_END = 524288;停止用户手势检测
//  TYPE_GESTURE_DETECTION_START = 262144;启动用户手势检测
//  TYPE_NOTIFICATION_STATE_CHANGED = 64;显示通知的事件
//  TYPE_TOUCH_EXPLORATION_GESTURE_END = 1024;结束触屏的手势
//  TYPE_TOUCH_EXPLORATION_GESTURE_START = 512;启动触屏的手势事件
//  TYPE_TOUCH_INTERACTION_END = 2097152;用户停止触摸事件时引起的触摸停止事件
//  TYPE_TOUCH_INTERACTION_START = 1048576;用户开始触摸屏幕时引发的触摸启动事件
//  TYPE_VIEW_ACCESSIBILITY_FOCUSED = 32768;
//  TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED = 65536;
//  TYPE_VIEW_CLICKED = 1;表示视图点击事件，比如按钮等
//  TYPE_VIEW_CONTEXT_CLICKED = 8388608;
//  TYPE_VIEW_FOCUSED = 8;视图获取焦点
//  TYPE_VIEW_HOVER_ENTER = 128;表示开始悬浮在某个视图上的事件，比如长按文字出现的复制粘贴提示
//  TYPE_VIEW_HOVER_EXIT = 256;表示停止悬浮在某个视图上
//  TYPE_VIEW_LONG_CLICKED = 2;
//  TYPE_VIEW_SCROLLED = 4096;滚动的视图
//  TYPE_VIEW_SELECTED = 4;表示选择条目，通常用于AdapterView.的环境中
//  TYPE_VIEW_TEXT_CHANGED = 16; EditText.中的文字发生变化
//  TYPE_VIEW_TEXT_SELECTION_CHANGED = 8192; EditText中选中的文本发生改变
//  TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY = 131072;表示以给定的力度便利某个视图的text ，比如，移动个下个词语
//  TYPE_WINDOWS_CHANGED = 4194304;屏幕中显示的窗口发生改变，比如打开或关闭一个窗口，窗口大小或层改变等
//  TYPE_WINDOW_CONTENT_CHANGED = 2048;窗口中的内容发生改变，比如添加了一个控件，控件大小改变等
//   TYPE_WINDOW_STATE_CHANGED = 32; 打开窗口的事件，如打开一个对话框，菜单等
	/**
     * 事件处理回调的方法，事件中相关调用方法查询：
     *   https://developer.android.com/reference/android/view/accessibility/AccessibilityEvent.html
     *
     * @param event
     */
    @Override
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
	    int eventType = event.getEventType();
       
        switch (eventType) {
		    case AccessibilityEvent.TYPE_NOTIFICATION_STATE_CHANGED:
                break;
			//示例：窗口发生变化事件，如打开一个对话框，菜单等
            case AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED:
                break;
			default:
				break;
		}
    }

	/**
     * 服务中断回调的方法
     */
    @Override
    public void onInterrupt() {

    }
}