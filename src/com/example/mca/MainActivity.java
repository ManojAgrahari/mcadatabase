package com.example.mca;

import android.os.Bundle;


import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.support.v4.widget.DrawerLayout;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class MainActivity extends Activity implements OnItemClickListener{
	private DrawerLayout drawerlayout;
	private ListView list;
	private String[] planets;
	private int TRICKS_ACTIVITY=1;
	private int MODEL_ACTIVITY=2;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		drawerlayout=(DrawerLayout) findViewById(R.id.drawerlayout);
		list=(ListView) findViewById(R.id.drawerlist);
		planets=getResources().getStringArray(R.array.planets);			
		list.setOnItemClickListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		// TODO Auto-generated method stub
		//Toast.makeText(this, planets[position]+"  was selected.",Toast.LENGTH_LONG).show();
		list.setItemChecked(position, true);
		if(position==TRICKS_ACTIVITY){
			startActivity(new Intent("android.intent.action.tricks"));
		}else
		if(position==MODEL_ACTIVITY){
			startActivity(new Intent("android.intent.action.model"));
			
		}
		
	}



}
