class Assert {
	int a = 1000;
	invariant {
		assert(a != 0);
	}

	int fun()
		in {
			assert(a != 0);
		}
		out(ret) {
			assert(ret != 0);
		}
		body {
			assert(false);
		}
}

int main() {
	Assert a = new Assert();
	assert(a.fun() != 0);
	return 0;
}
