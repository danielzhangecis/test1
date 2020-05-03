package org.mycompany;

import java.util.*;

import org.apache.camel.Exchange;

	public class JavaCallOut {
		
		public static void sayHello(String body) {
			System.out.println("Hello!!! Input is "+body);
		}
		
		public static String rand1or2or3() {
			int z;
			double x = Math.random();
			int y = (int) Math.log(x)*23+32;
			z = Math.floorMod(y,3);
			System.out.println("got random number "+z);
			return String.valueOf(z);
		}
		
		public static void sayGoodbye( String body , Exchange exchange) {
			System.out.println("Good Bye!!! Ouput is "+body+" because we filtered elements whose value is not bigger than number: "+exchange.getIn().getHeader("MagicNumber")+" ,and we augmented the message with ExtraInfo.");
		}	
}
