@safe:

void main() {
	int v;
	child(&v);
}

void child(scope int* i) {
	*i = 10;
}
