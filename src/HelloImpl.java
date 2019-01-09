import org.omg.CORBA.ORB;

import HelloApp.HelloPOA;

public class HelloImpl extends HelloPOA {

	private ORB orb;

	public void setORB(ORB orb) {
		this.orb=orb;
	}
	@Override
	public String sayHello() {
		return "Hello World";
	}

	@Override
	public void shutdown() {
		orb.shutdown(false);
	}

}
