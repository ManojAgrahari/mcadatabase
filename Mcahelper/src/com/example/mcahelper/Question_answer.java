package com.example.mcahelper;

public class Question_answer {
	private String Question,Options[] = new String[4];
	public void setData(String...datas){
		Question = datas[0];
		Options[0]=datas[1];
		Options[1]=datas[2];
		Options[2]=datas[3];
		Options[3]=datas[4];
	}
	public String[] getData(){
		String datas[]= new String[5];
		 datas[0] = Question;
		 datas[1]=Options[0];
		 datas[2]=Options[1];
		 datas[3]=Options[2];
		 datas[4]=Options[3];
		 return datas;
	}

}
