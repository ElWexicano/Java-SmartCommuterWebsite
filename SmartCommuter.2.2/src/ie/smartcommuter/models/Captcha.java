package ie.smartcommuter.models;

public class Captcha {
	
	private String question;
	private String answer;
	
	public String getQuestion() {
		return question;
	}
	private void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	private void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public void generate() {
		
		int x = (int)(Math.random()*200);
		int y = (int)(Math.random()*200);
		
		setQuestion(Integer.toString(x)+" + "+Integer.toString(y));
		setAnswer(Integer.toString(x+y));
	}
}