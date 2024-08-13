module builtins;
import std::io;

fn int main(String[] args){
	io::printfn("%s %s %s %s %s %s",$$DATE,$$TIME, $$FILE, $$FUNC, $$LINE, $$MODULE);
	return 0;
}
