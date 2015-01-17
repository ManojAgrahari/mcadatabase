package com.example.mca;

import java.util.HashMap;

import android.app.Activity;
import android.content.Intent;
import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.gesture.GestureOverlayView.OnGesturePerformedListener;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.util.SparseIntArray;
import android.view.GestureDetector.OnGestureListener;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnGenericMotionListener;
import android.view.View.OnTouchListener;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class Questionpanel extends Activity implements OnClickListener,OnItemClickListener,OnTouchListener {
	boolean noselections = true;
	public static String CHOICE_TAG="madechoices";
	View prevselection = null;
	TextView question;
	int selectedposition;
	String[] retrieved;
	private HashMap<Integer, Integer> choices;
	ListView list2;
	DrawerLayout drawerlayout;
	FrameLayout framelayout;
	private float DIFF_MARGIN=15;
	private float y1,y2;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.questionpanel);
		drawerlayout=(DrawerLayout) findViewById(R.id.drawerlayout2);
		framelayout=(FrameLayout) findViewById(R.id.maincontent);
		list2=(ListView) findViewById(R.id.drawerlist2);
		question = (TextView) findViewById(R.id.textView1);
		choices = new HashMap<Integer, Integer>();
		Intent recievedintent = getIntent();
		selectedposition = recievedintent.getIntExtra(Modelq.POSITION_TAG, -1);
		retrieved = getResources().getStringArray(R.array.Questionlist);
		question.setText("Question "+retrieved[selectedposition]);
		list2.setOnItemClickListener(this);
		framelayout.setOnTouchListener(this);
	}

	@Override
	public void onClick(View view) {
		// TODO Auto-generated method stub
		noselections = false;
		if (prevselection != null)
			prevselection.setBackgroundColor(Color.BLACK);
		switch (view.getId()) {
		case R.id.textView2:
			view.setBackgroundColor(Color.BLUE);
			break;
		case R.id.textView3:
			view.setBackgroundColor(Color.BLUE);
			break;
		case R.id.textView4:
			view.setBackgroundColor(Color.BLUE);
			break;
		case R.id.textView5:
			view.setBackgroundColor(Color.BLUE);
			break;
		default:
			break;
		}
		prevselection = view;
	}

//	public void onButtonclick(View view) {
//		if (prevselection != null && !noselections) {
//			prevselection.setBackgroundColor(Color.BLACK);
//			saveoption();
//		}
//		switch (view.getId()) {
//		case R.id.button1:
//			++selectedposition;
//			if (selectedposition != 10) {
//				question.setText("Question "+retrieved[selectedposition]);
//			}
//
//			break;
//		case R.id.button2:
//			--selectedposition;
//			if (selectedposition != -1) {
//				question.setText("Question "+retrieved[selectedposition]);
//			}
//			break;
//		}
//		reload(selectedposition);
//	}

	public void saveoption() {
		int value = 0;
		switch (prevselection.getId()) {
		case R.id.textView2:
			value = 1;
			break;
		case R.id.textView3:
			value = 2;
			break;
		case R.id.textView4:
			value = 3;
			break;
		case R.id.textView5:
			value = 4;
			break;
		default:
			break;
		}
		choices.put(selectedposition, value);
		Toast.makeText(getBaseContext(), "" + choices.toString(),
				Toast.LENGTH_SHORT).show();
	}

	public void reload(int position) {
		if (choices.containsKey(position)) {
			TextView view = null;
			int value = choices.get(position);
			switch (value) {
			case 1:
				view = (TextView) findViewById(R.id.textView2);
				break;
			case 2:
				view = (TextView) findViewById(R.id.textView3);
				break;
			case 3:
				view = (TextView) findViewById(R.id.textView4);
				break;
			case 4:
				view = (TextView) findViewById(R.id.textView5);
				break;
			}
			view.setBackgroundColor(Color.BLUE);
			prevselection = view;
			noselections = false;
		} else {
			noselections=true;
			Toast.makeText(getBaseContext(),
					"position " + position + " is not present",
					Toast.LENGTH_SHORT).show();
		}
		return;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		// TODO Auto-generated method stub
		Toast.makeText(getBaseContext(), "A click occured", Toast.LENGTH_SHORT).show();
		question.setText("Question "+retrieved[position]);
		if (prevselection != null && !noselections) {
			prevselection.setBackgroundColor(Color.BLACK);
			saveoption();
		}
		reload(position);
		selectedposition=position;
		drawerlayout.closeDrawer(Gravity.RIGHT);
	}

	@Override
	public boolean onTouch(View arg0, MotionEvent arg1) {
		// TODO Auto-generated method stub
		switch (arg1.getAction()) {
		case MotionEvent.ACTION_DOWN:
			y1=arg1.getY();
			break;
		case MotionEvent.ACTION_UP:
			y2=arg1.getY();
			if(Math.abs(y2-y1)>DIFF_MARGIN){
				if (prevselection != null && !noselections) {
					prevselection.setBackgroundColor(Color.BLACK);
					saveoption();
				}
//				case R.id.button1:
//					++selectedposition;
//					if (selectedposition != 10) {
//						question.setText("Question "+retrieved[selectedposition]);
//					}
//
//					break;
//				case R.id.button2:
//					--selectedposition;
//					if (selectedposition != -1) {
//						question.setText("Question "+retrieved[selectedposition]);
//					}
//					break;
//				}
//				reload(selectedposition);

				if((y2-y1)>0){
					Toast.makeText(getBaseContext(), "A downward swipe", Toast.LENGTH_SHORT).show();
					--selectedposition;
					if (selectedposition != -1) {
						question.setText("Question "+retrieved[selectedposition]);
					}

				}
				else{
					Toast.makeText(getBaseContext(), "A upward swipe", Toast.LENGTH_SHORT).show();
					++selectedposition;
					if (selectedposition != 10) {
						question.setText("Question "+retrieved[selectedposition]);
					}

				}
			}
			reload(selectedposition);

		default:
			break;
		}
		return true;
	}
	}
