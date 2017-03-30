package utils;

import org.hibernate.SessionFactory;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class MySessionFactory {
	private static SessionFactory fac = null;

	private MySessionFactory() {

	}

	// @SuppressWarnings("deprecation")
	public static SessionFactory getSessionFactory() {
		// System.out.println("bat dau tao fac1");
		// StandardServiceRegistry standardRegistry = new
		// StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		ServiceRegistry registry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		// System.out.println("bat dau tao fac2"+registry);
		if (fac == null) {
			try {
				// fac = (SessionFactory) new
				// MetadataSources(standardRegistry).getMetadataBuilder().build();
				Metadata meta = new MetadataSources(registry).getMetadataBuilder().build();
				fac = meta.getSessionFactoryBuilder().build();
				System.out.println("tao fac thanh cong");
			} catch (Exception e) {
				// The registry would be destroyed by the SessionFactory, but we
				// had trouble building the SessionFactory
				// so destroy it manually.
				System.out.println("tao fac that bai");
				e.printStackTrace();
				StandardServiceRegistryBuilder.destroy(registry);
			}
		}
		return fac;
	}

	// A SessionFactory is set up once for an application!

}
