package action.model.vo;

/**
 * @author gun
 *
 */
public class Person {
	private String name;
	private char gender;
	private int age;
//	private int nai;
	
	public Person() {
	}

	public Person(String name, char gender, int age) {
		super();
		this.name = name;
		this.gender = gender;
		this.age = age;
	//	this.nai = age;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", gender=" + gender + ", age=" + age + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public int getNai() {
		return age;
	//	return nai;
	}

	public void setNai(int age) {
		this.age = age;
	//	this.nai = age;
	}
	
	
	
}
