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

import android.content.Context;
import android.os.AsyncTask;

/*
 * this is the ClientServerConnection class 
 * which deals with the connection of our
 * android app with the local server
 * for that purpose you need to start your 
 * local server from xampp control panel and provide your ip
 * address bellow or your actual servers url */

public class ClientServerConnection extends AsyncTask<String, Void, String>{

	private String uri,data;
	BufferedReader in;
	/*
	 * Constructor for the Client_Server_Connection Class 
	 * which will take the context of the activity class
	 * and the burl to open
	 * give your own ip adress there in uri
	 */
	public ClientServerConnection(Context cntxt,String url) {
		uri = "http://10.200.3.172/projectxm/"+url;
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
		//Toast.makeText(context, data, Toast.LENGTH_LONG).show();

		
	}
	

}