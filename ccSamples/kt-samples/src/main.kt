fun main(arg:Array<String>) {
    System.load("/Users/Harry/myproject/cc/jni/cmake-build-debug/libonload.dylib")

    val h = Hello()
    h.sayHello()
}

class Hello {
    external fun sayHello():Int
    // https://github.com/fuzzdota/kotlin-jni-example/blob/master/README.md
}

fun printLibs() {
    val javaLibPath = System.getProperty("java.library.path")
    val envVars = System.getenv()
    println(envVars["Path"])
    println(javaLibPath)
    for (`var` in envVars.keys) {
        System.err.println("examining " + `var`)
        if (envVars[`var`] == javaLibPath) {
            println(`var`)
        }
    }
}