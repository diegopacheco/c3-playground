module struct_methods;
import std::io;

struct Config{
    int port;
}

fn void Config.dump(Config* this){
    io::printfn("Port: %d",this.port);
}

fn int main(String[] args){
	Config config = {8080};
	config.dump();
	return 0;
}
