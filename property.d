struct S {
	int b;
	@property ref a() {
		return b;
	}
}

void main() {
	S s;
	auto ptr = &s.a;
}
