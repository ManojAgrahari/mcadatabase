package com.example.mcahelper;

import java.util.concurrent.ExecutionException;

import android.support.v7.app.ActionBarActivity;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;


/*
 * This is the model question activity class
 * here u have to include three buttons
 * for three different subjects
 * ryt now i have just made one single activity
 * for all of them*/

public class ModelQuestion extends ActionBarActivity {
	WebView webview;
	String getData,Question1,htmldata;
	

	@SuppressLint("SetJavaScriptEnabled")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_model_question);
		/*
		 * here is the object instantiation for the ClientServerConnection
		 * which is extended from async task
		 * and all the client-server networking portion 
		 * is done in CLientServerConnection class
		 */
		final ClientServerConnection network = new ClientServerConnection(this, "retrieve.php");
		network.execute("hello");	
		try {
			getData = network.get();
		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ExecutionException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		/*
		 * here is the instantiation of the htmleditor 
		 * class all the stuffs of javascript,html
		 * and JSON parsing is done in this class
		 */
		htmleditor htm = new htmleditor(getData);
		
		//this is the webview for the html display
		
		webview = (WebView) findViewById(R.id.wbvw);
		WebSettings websettings = webview.getSettings();
		websettings.setJavaScriptEnabled(true);
		
	
		
		webview.loadDataWithBaseURL("http://bar", htm.HtmlEncodedData(),"text/html", "utf-8", "");
		//Option[2] = jsonObject.getInt("Option3");                                  
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.model_question, menu);
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
