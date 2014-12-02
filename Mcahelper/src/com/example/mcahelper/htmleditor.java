package com.example.mcahelper;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

/*
 * This is the html editor class
 * all the stuffs you want to do for web desighning
 * like html
 * javascript 
 * mathjax
 * JSON parsing 
 * etc
 * do all those stuffs in this class
 */

public class htmleditor {
	
	public String jsonstring,Question_Option[] = new String[5];
	private String htmlData;
	private JSONObject jsonObject;
	List<Question_answer> getfromServer = new ArrayList<Question_answer>();
	
	
	public htmleditor(String jsnstring){
		jsonstring = jsnstring;
		
		try {
		    jsonObject = new JSONObject(jsonstring);
			for(int i = 0;i<jsonObject.length();++i){
		    Question_Option[0] = jsonObject.getString("Question");
			Question_Option[1] = jsonObject.getString("Option1");
			Question_Option[2] = jsonObject.getString("Option2");
			Question_Option[3] = jsonObject.getString("Option3");
			Question_Option[4] = jsonObject.getString("Option4Right");
			Question_answer qs = new Question_answer();
			qs.setData(Question_Option);
			
			getfromServer.add(qs);
			}
			
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String HtmlEncodedData(){
		
		//this is the basic html layout which is going to be editted
		
		htmlData = "<html>"+
				"<head"+
				"<title>Model Question</title>"+
				"</head>"+
				"<body>"+
				"The question of "+"English is :<br />"+getfromServer.get(0).getData()[0]+ 
				"<br /><form>"+
				"Option[0]"+"<input type='radio' name='c0' /><br />"+
				"Option[1]"+"<input type='radio' name='c1' /><br />"+
				"Option[2]"+"<input type='radio' name='c2' /><br />"+
				"Option[3]"+"<input type='radio' name='c3' /><br />"+
				"</form>"+
				"</body>"+
				"</html>";
		
		
		return htmlData;
	}
	

	
	

}
