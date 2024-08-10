module foreach_list;
import std::io;
import std::collections::list;

fn int main(String[] args){
	List(<String>) list;
    list.new_init();
    list.push("Hello");
    list.push("World");
    foreach (s : list){
        io::printn(s);
    }
	return 0;
}
