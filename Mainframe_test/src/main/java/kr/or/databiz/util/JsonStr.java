package kr.or.databiz.util;

import java.util.HashMap;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonStr {

	public static String mapTojsonString(HashMap<String, Object> map) {
		String result = "";

		if (map == null) {
			return result;
		}

		ObjectMapper mapper = new ObjectMapper();

		try { 
			// convert map to JSON string 
			// result = mapper.writeValueAsString(map);
			result = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(map);

		} catch (JsonProcessingException e) { 
			e.printStackTrace();
			result = "";
		} finally {
			map.clear();
		}

		return result;
	}

}
