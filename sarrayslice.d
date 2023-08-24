@safe:

void main() {
	int[] a = fun();
}

int[] fun() {
	int[10] arr;
	return fun2(arr);
}

int[] fun2(int[] a) {
	return a;
}
