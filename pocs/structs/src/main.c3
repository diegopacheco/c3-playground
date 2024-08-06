module structs;
import std::io;

struct Person{
	String name;
	char* email;
	int age;
}

fn int main(String[] args){
	char* arr = "jd@jd.com";

	Person jd = Person{"John Doe", arr, 25};
	io::printfn("Name: %s Age: %s", jd.name, jd.age);
	io::printfn("Email: %c", *jd.email);
	return 0;
}
