module def_alias;
import std::io;

// type alias
def Email = String;

struct User {
	String name;
	Email email;
}

fn int main(String[] args){
	User user = User{.name="John Doe", .email="jd@jd.com"};
	io::printfn("User: %s %s", user.name, user.email);
	return 0;
}
