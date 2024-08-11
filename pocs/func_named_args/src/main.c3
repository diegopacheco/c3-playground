module func_named_args;
import std::io;

struct Point{
	int x;
	int y;
}

fn void printAll(Point p,String s,int i){
	io::printn(p.x);
	io::printn(p.y);
	io::printn(s);
	io::printn(i);
}

fn int main(String[] args){
	Point p = Point{
		.x = 1,
		.y = 2
	};
	printAll(.s="Hello",.i=3,.p=p);
	return 0;
}
