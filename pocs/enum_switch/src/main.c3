module enum_switch;
import std::io;

enum Height : uint{
    LOW,
    MEDIUM,
    HIGH,
}

fn int main(String[] args){
	io::printn(enumSwitch(Height.LOW));
	return 0;
}

fn String enumSwitch(Height height){
	switch(height){
		case Height.LOW:
			return "Low";
		case Height.MEDIUM:
			return "Medium";
		case Height.HIGH:
			return "High";
	}
}
