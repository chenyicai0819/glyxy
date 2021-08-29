package cn.edu.guet;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author swagg
 */
@SpringBootApplication
@MapperScan("cn.edu.guet.mapper")
public class GyapiApplication {

	public static void main(String[] args) {
		SpringApplication.run(GyapiApplication.class, args);
	}

}
