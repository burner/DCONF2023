int uniform(int l, int h) {
    int i = h - l;
    foreach(it; l .. h) {
        i += (it * 1337) % 15;
    }
    return i;
}

struct A {
    int[100] a;
}

A fun() {
    A a;
    foreach(i; 0 .. 100) {
        a.a[i] = uniform(0, 100);
    }
    return a;
}

int main() {
    A  a = fun();
    return a.a[5] % 100 == 0;
}
