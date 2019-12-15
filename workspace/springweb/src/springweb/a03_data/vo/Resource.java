package springweb.a03_data.vo;

public class Resource {
// Resource VO  "id": "tmp_1", "name": "개발자 1"
// resource table gid, id, name
	private String id;
	private String name;
	
	public Resource() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Resource(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
