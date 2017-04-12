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
	public static SessionFactory getSessionFactory() {
		
		ServiceRegistry registry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		if (fac == null) {
			try {
				Metadata meta = new MetadataSources(registry).getMetadataBuilder().build();
				fac = meta.getSessionFactoryBuilder().build();
			} catch (Exception e) {				
				e.printStackTrace();
				StandardServiceRegistryBuilder.destroy(registry);
			}
		}
		return fac;
	}



}
