@safe:

@trusted ref fun(return ref int a) {
	return a;
}

int main(string[] args) {
	int a = 10;
	int b = fun(a);
	return b;
}
