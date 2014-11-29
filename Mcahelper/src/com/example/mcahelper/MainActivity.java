package com.example.mcahelper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.ArrayList;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

import android.support.v7.app.ActionBarActivity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends ActionBarActivity {
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
		ClientServerConnection net = new ClientServerConnection(MainActivity.this, "retrieve.php");
		//txtvw.setText(net.doInBackground("hello"));
		net.execute("hello");
		//txtvw.setText(net.doInBackground("hello"));
		
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
	
	
	
	public class ClientServerConnection extends AsyncTask<String, Void, String>{

		private Context context;
		private String uri,data;
		BufferedReader in;
		/*
		 * Constructor for the Client_Server_Connection Class 
		 * which will take the context of the activity class
		 * and the burl to open
		 */
		public ClientServerConnection(Context cntxt,String url) {
			// TODO Auto-generated constructor stub
			context = cntxt;
			uri = "http://192.168.1.5/projectxm/"+url;
		}
		@Override
		protected String doInBackground(String... arg0) {
			// TODO Auto-generated method stub
			//current pi address 192.168.1.5
			ArrayList<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>();
			//nameValuePairs.add(new BasicNameValuePair(name, value))
			
			
			
			//create the Tap request
			
			try {
			
				
				HttpClient client = new DefaultHttpClient();
				URI website = new URI(uri);
				HttpPost request = new HttpPost();
				request.setHeader("Content-Type", "application/x-www-form-urlencoded");
				request.setURI(website);
				request.setEntity(new UrlEncodedFormEntity(nameValuePairs,"UTF-8"));
				
				HttpResponse response = client.execute(request);
				in = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
				StringBuffer sb = new StringBuffer("");
				String l = "",nl=System.getProperty("line.separator");
				while((l=in.readLine())!=null){
					sb.append(l+nl);
				}
				in.close();
				data = sb.toString();
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return data;
		}
		@Override
		protected void onPostExecute(String result) {
			// TODO Auto-generated method stub
			super.onPostExecute(result);
			Toast.makeText(context, data, Toast.LENGTH_LONG).show();
			txtvw.setText(result);
		}
		

	}
	

}
