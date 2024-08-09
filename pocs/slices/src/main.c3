module slices;
import std::io;

fn int main(String[] args){
	
	int[5] a = { 1, 20, 50, 100, 200 };
	int[] b = a[0..4]; // The whole array as a slice.
	printArray(b,5);

	int[] c = a[0:5];  // The whole array as a slice.
	printArray(c,5);

	int[] d = a[2..3];  // 50, 100
	printArray(d,2);

	return 0;
}

fn void printArray(int[] a,int size) {
	for (int i = 0; i < size; i++) {
		io::printfn("%d",a[i]);
	}
}