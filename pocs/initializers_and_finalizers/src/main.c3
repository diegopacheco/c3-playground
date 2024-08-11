module initializers_and_finalizers;
import std::io;

fn int main(String[] args){
	io::printn("Hello, World!");
	return 0;
}

fn void run_at_startup() @init {
    io::printn("Initializer... caled!");
}

fn void run_at_shutdown() @finalizer {
    io::printn("Finalizer... caled!");
}


