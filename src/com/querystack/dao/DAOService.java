package com.querystack.dao;

import java.util.List;

import com.querystack.dto.Question;
import com.querystack.dto.Solution;
import com.querystack.dto.User;

public interface DAOService {

	// User
	User createAccount(User user);

	boolean checkLogin(String email, String password);

	User getUserByEmailId(String emailId);

	// Question
	boolean insertQuestion(Question question);

	List<Question> getQuestionByDefault();

	// Ajax Call
	boolean getEmailId(String emailId);

	boolean setMyQuestion(Question myQues);

	List<Question> getMyQuestions(long userId);

	Question getQuestionById(long quesId);

	List<Solution> setMySolution(Solution solObj);

	List<Solution> getSolutionsByQuesID(long qId);

	User update(User user);

	int getQuesRowCount();

	int setVote(int i, long quesId);

	int setGetSolVote(int i, long q);

	List<Solution> getMySolutions(long userId);

	List<Question> getMyFavQuestions(List<Long> favQues);

	User addToMyFavQues(long q, User user);
}
