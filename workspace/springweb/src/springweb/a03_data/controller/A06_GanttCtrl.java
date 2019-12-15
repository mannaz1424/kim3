package springweb.a03_data.controller;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a03_data.service.A06_GanttService;
import springweb.a03_data.vo.Resource;

@Controller
@RequestMapping("/gantt.do")
public class A06_GanttCtrl {
	@Autowired(required=false)
	private A06_GanttService service;
	

	
	// /gantt.do?method=init
	@RequestMapping(params="method=init")
	public String init() {
		return "WEB-INF\\view\\a03_data\\c20_gantMain.jsp";
	}
	// method=data
	@RequestMapping(params="method=data")
	public String revData(@RequestParam("jdata") String revData, Model d) throws ParseException {
		System.out.println("###클라이언트에서 받은 json 데이터###");
		System.out.println(revData.length());
		System.out.println(revData);
		// Task VO "id": -1, "name": "내용", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 0, "status": "STATUS_ACTIVE", "depends": "", "canWrite": true, "start": 1396994400000, "duration": 20, "end": 1399586399999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": true
		// Resource VO  "id": "tmp_1", "name": "개발자 1"
		// Role VO Role  {"id": "tmp_1", "name": "Project Manager"}
		// 위 내용을 전체 포함하는 Gant VO
		// 1.  string 문자열 json 데이터를 parser에 의해서 객체로 변환처리
		// {"tasks":[],"selectedRow": 2, "deletedTaskIds": [],"resources": [], 
		//  "roles":[],"canWrite":    true, "canDelete":true, "canWriteOnParent": true, canAdd:true}		
		JSONParser parser = new JSONParser();
		
		JSONObject jobj = (JSONObject)parser.parse(revData);
		// 객체의 속성 selectedRow의 값 가져오기.. JSONObject의 get("속성명")
		System.out.println("selectedRow:"+jobj.get("selectedRow"));
		// 객체의 속성에 서 배열로 된 것을 JSONArray 가져올 수 있다.
		JSONArray jarry = (JSONArray)jobj.get("resources");
		System.out.println("resources의 데이터 건수:"+jarry.size());
/*		
	"resources": [
	    {"id": "tmp_1", "name": "개발자 1"},
	    {"id": "tmp_2", "name": "Resource 2"},
	    {"id": "tmp_3", "name": "Resource 3"},
	    {"id": "tmp_4", "name": "Resource 4"}
	  ]				
*/		
		ArrayList<Resource> rlist = new ArrayList<Resource>();
		for(int idx=0;idx<jarry.size();idx++) {
			JSONObject ob=(JSONObject)jarry.get(idx);
			System.out.println(ob.get("id")+":"+ob.get("name"));
			rlist.add(new Resource((String)ob.get("id"),(String)ob.get("name")));
		}
		service.insertResource(rlist);
		d.addAttribute("ok", "ok");
		return "pageJsonReport";
	}	
}
