package com.DBUtils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

public class DBUtils {
	private static ThreadLocal<SqlSession> t = new ThreadLocal<SqlSession>();
	private static SqlSessionFactory sf;

	static {
		try {
			initSF();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void initSF() throws Exception {
		String resource = "springMybatisDao.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sf = new SqlSessionFactoryBuilder().build(inputStream);
	}

	public static SqlSession getSession()  {
		if (sf == null) {
			try {
				initSF();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		SqlSession session = t.get();
		if (session == null) {
			session = sf.openSession();
			t.set(session);
		}
		return session;
	}
}