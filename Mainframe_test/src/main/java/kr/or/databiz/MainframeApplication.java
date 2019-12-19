package kr.or.databiz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/*
 * https://otrodevym.tistory.com/entry/Springmaven-Postgresql%EC%99%80-MyBatis-%EC%84%A4%EC%A0%95
 */


@SpringBootApplication
public class MainframeApplication {

	public static void main(String[] args) {

//		String profile = System.getProperty("spring.profiles.active");
//		if (profile == null) {
//			System.setProperty("spring.profiles.active", "dev");
//		}

		SpringApplication app = new SpringApplication(MainframeApplication.class);
		app.setBannerMode(Banner.Mode.OFF);
		app.run(args);
	}

}
