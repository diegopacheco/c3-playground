module reflection_membersof;
import std::io;

struct Point{
	int x;
	int y;
}

struct PointRoot{
    int i;
    Point* point;
}

fn int main(String[] args){
	String x = PointRoot.membersof[0].nameof; // "i"
	String y = PointRoot.membersof[1].nameof; // "point"
	io::printfn("PointRoot.[0] name == %s",x);
	io::printfn("PointRoot.[1] name == %s",y);
	return 0;
}
