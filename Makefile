# Build tools
NVCC = nvcc
CXX = g++

# here are all the objects
GPUOBJS = cuexample.o 
OBJS = cppexample.o

# make and compile
cudaexample.out:$(OBJS) $(GPUOBJS)
	$(NVCC) -o cudaexample.out $(OBJS) $(GPUOBJS) 

cuexample.o: cuexample.cu
	$(NVCC) -c cuexample.cu

cppexample.o: cppexample.cpp
	$(CXX) -c cppexample.cpp
