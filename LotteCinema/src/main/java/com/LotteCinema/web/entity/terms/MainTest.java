package com.LotteCinema.web.entity.terms;

public class MainTest {

	public static void main(String[] args) {
		Terms[] termses = new Terms[3]; 
		termses[0] = Terms.asCard("국민카드", 1);
		termses[1] = Terms.asEmail(true, true, false, true, false, true, true, false);
		termses[2] = Terms.asPhone(true, true, true, true);
		
		for(int i = 0; i< termses.length; i++) {
			if(termses[i] instanceof CardTerms) {
				System.out.println(termses[i]);
			} else if(termses[i] instanceof EmailTerms) {
				System.out.println(termses[i]);
			} else if(termses[i] instanceof PhoneTerms) {
				System.out.println(termses[i]);
			}
		}
	}
}
