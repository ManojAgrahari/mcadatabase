package com.example.mcahelper;

import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends ActionBarActivity {
	//the variables used in this activity declared
	Button tricks,model,forum;
	TextView txtvw;

	
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		tricks = (Button) findViewById(R.id.btn_tricks);
		model = (Button) findViewById(R.id.btn_model);
		forum = (Button) findViewById(R.id.btn_forum);
		txtvw = (TextView) findViewById(R.id.tv1);
		
		/*
		 * now here is the code to which responds to the click of the button
		 * model question 
		 * tricks
		 * and
		 * forum
		 */
		
		
		
		//here goes for ModelQuestion Activity
		model.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(MainActivity.this, ModelQuestion.class);
				startActivity(intent);;
				
				
				
				
				
			}
		});
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	

	
	
	}
