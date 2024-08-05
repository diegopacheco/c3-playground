module foreach_loop;
import std::io;

fn int main(String[] args){
	loopAll({1, 2, 3, 4, 5, 6, 7, 8, 9, 10});
	return 0;
}

fn void loopAll(int[] arr){
	foreach(&i : arr){
		io::printf("address: %p value: %d \n", i, *i);
	}
}
