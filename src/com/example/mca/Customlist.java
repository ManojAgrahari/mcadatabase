package com.example.mca;

import android.content.Context;
import android.content.Intent;
import android.sax.StartElementListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.TextView;
import android.widget.Toast;

public class Customlist extends BaseAdapter{

	private Context context;
	String[] questions={"question1",
						"question2",
						"question3",
						"question4",
						"question5",
						"question6",
						"question7",
						"question8",
						"question9",
						"question10"};
	public Customlist(Context context) {
		// TODO Auto-generated constructor stub
		this.context=context;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return questions.length;
	}

	@Override
	public Object getItem(int arg0) {
		// TODO Auto-generated method stub/
		return questions[arg0];
	}

	@Override
	public long getItemId(int arg0) {
		// TODO Auto-generated method stub
		return arg0;
	}

	@Override
	public View getView(int position, View view, ViewGroup parent) {
		// TODO Auto-generated method stub
		LayoutInflater inflater=(LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View row=inflater.inflate(R.layout.parentofrow, parent,false);
		TextView textview=(TextView) row.findViewById(R.id.textView1);
		textview.setText(questions[position]);
		return row;
	}


}
