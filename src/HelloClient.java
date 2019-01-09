import org.omg.CORBA.ORB;
import org.omg.CosNaming.NamingContextExt;
import org.omg.CosNaming.NamingContextExtHelper;

import HelloApp.Hello;
import HelloApp.HelloHelper;

public class HelloClient {
	public static void main(String[] args) {
		try {
			ORB orb = ORB.init(args, null);
			
			// Get Context from ORB
			org.omg.CORBA.Object context_reference = orb.resolve_initial_references("NameService");
			NamingContextExt context = NamingContextExtHelper.narrow(context_reference);
			
			// Get Object from context
			Hello helloImpl = HelloHelper.narrow(context.resolve_str("Hello"));
			
			// Enjoy your object
			System.out.println("[*] Obtained object: "+helloImpl);
			System.out.println("Say Hello... "+helloImpl.sayHello());
			helloImpl.shutdown();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
