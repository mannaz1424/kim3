package springweb.a03_data.vo;
// springweb.a03_data.vo.Calendar

public class Calendar {
	private int id;
	private String title;
	private String start;
	private String end;
	private String content;
	private String color;
	private String textColor;
	private boolean allDay;
	public Calendar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Calendar(String title, String start, String end, String color, String textColor) {
		super();
		this.title = title;
		this.start = start;
		this.end = end;
		this.color = color;
		this.textColor = textColor;
	}
	public Calendar(int id, String title, String start, String end, String content, String color, String textColor,
			boolean allDay) {
		super();
		this.id = id;
		this.title = title;
		this.start = start;
		this.end = end;
		this.content = content;
		this.color = color;
		this.textColor = textColor;
		this.allDay = allDay;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTextColor() {
		return textColor;
	}
	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	public boolean isAllDay() {
		return allDay;
	}
	public void setAllDay(boolean allDay) {
		this.allDay = allDay;
	}
	
}
