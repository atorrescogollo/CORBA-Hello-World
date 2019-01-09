import org.omg.CORBA.ORB;
import org.omg.CosNaming.NamingContextExt;
import org.omg.CosNaming.NamingContextExtHelper;
import org.omg.PortableServer.POA;
import org.omg.PortableServer.POAHelper;

import HelloApp.Hello;
import HelloApp.HelloHelper;

public class HelloServer {
	public static void main(String[] args) {
		try {
			// Init ORB
			ORB orb = ORB.init(args, null);

			// Activate POAManager
			POA rootpoa = POAHelper.narrow(orb.resolve_initial_references("RootPOA"));
			rootpoa.the_POAManager().activate();

			// Get Context from ORB
			org.omg.CORBA.Object context_reference = orb.resolve_initial_references("NameService");
			NamingContextExt context = NamingContextExtHelper.narrow(context_reference);

			// Bind Object (get reference in rootpoa and bind in context)
			HelloImpl helloImpl = new HelloImpl();
			helloImpl.setORB(orb);
			org.omg.CORBA.Object servant_reference = rootpoa.servant_to_reference(helloImpl);
			Hello hello = HelloHelper.narrow(servant_reference);
			context.bind(context.to_name("Hello"), hello);
			
			System.out.println("HelloServer is running...");
			orb.run();

		} catch (Exception e) {
			System.err.println("ERROR: "+e.getMessage());
			e.printStackTrace();
		}
		
		System.out.println("HelloServer exiting...");
	}
}
