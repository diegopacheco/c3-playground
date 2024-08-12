module if_catch_switch;
import std::io;

fault Bad{
	ERROR,
	UNKNOWN,
	LUCKY
}

fn int main(String[] args){
	int! result = yourRiskyFunction();
	if (catch result){
		case Bad.ERROR:
			io::printfn("Bad.ERROR occurred. ");
		break;
		case Bad.UNKNOWN:
			io::printfn("Bad.UNDOWN occurred. ");
		break;
		case Bad.LUCKY:
			io::printfn("Bad.LUCKY occurred. ");
		break;
		default:
			io::printfn("You are good to go. ");
	}
	return 0;
}

fn int! yourRiskyFunction() {
	return Bad.ERROR?;
}
