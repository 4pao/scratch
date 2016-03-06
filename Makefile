CXX=/Users/janeshia/Workspace/csfs/master/prebuilts/clang/self/darwin-x86/3.8/bin/clang++
CLFAGS=-flto -g
CXXFLAGS=-v -target armv7-none-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -flto -g -gcc-toolchain /Users/janeshia/Library/Android/android-ndk-r10d/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64 --sysroot=/Users/janeshia/Library/Android/android-ndk-r10d/platforms/android-21/arch-arm -I/Users/janeshia/Library/Android/android-ndk-r10d/sources/cxx-stl/llvm-libc++/../llvm-libc++abi/libcxxabi/include -I/Users/janeshia/Library/Android/android-ndk-r10d/sources/cxx-stl/llvm-libc++/libcxx/include -I/Users/janeshia/Library/Android//android-ndk-r10d/sources/android/support/include

main: bits.o main.o
	$(CXX) $(CXXFLAGS) -flto -o $@ $?

clean:
	rm -f *.o main
