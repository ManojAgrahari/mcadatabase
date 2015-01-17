package com.example.mca;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class Modelq extends Activity {
	ListView listview;
	Customlist custom;
	public static String POSITION_TAG="position";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.modelquestions);
		listview=(ListView) findViewById(R.id.listView1);
		custom=new Customlist(this);
		listview.setAdapter(custom);
		listview.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position,
					long id) {
				// TODO Auto-generated method stub
				Intent newintent=new Intent("android.intent.action.questionpanel");
				newintent.putExtra(POSITION_TAG,position);
				startActivity(newintent);
			}
			
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
