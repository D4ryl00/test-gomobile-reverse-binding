package goTest

type Hello interface {
	SayHello()
}

func CallJava(h Hello) {
	h.SayHello()
}
