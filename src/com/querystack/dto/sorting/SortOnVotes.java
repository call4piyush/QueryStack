package com.querystack.dto.sorting;

import java.util.Comparator;

import com.querystack.dto.Question;

public class SortOnVotes implements Comparator<Question> {

	@Override
	public int compare(Question o1, Question o2) {
		// TODO Auto-generated method stub
		return o2.getVotes() - o1.getVotes();
	}

}
