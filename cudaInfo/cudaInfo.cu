#include <cuda_runtime.h>
#include <stdio.h>

int main() {
    printf("START\n");
    int device_count;
    cudaGetDeviceCount(&device_count);
    printf("Number of CUDA devices: %d\n", device_count);

    cudaDeviceProp props;
    for (int i = 0; i < device_count; i++) {
        cudaGetDeviceProperties(&props, i);
        printf("Info for device #%d:\n ", i);
        printf("\tName: %s\n", props.name);
        printf("\tGlobal Memory: %d\n", props.totalGlobalMem);
        printf("\tShared Memory per Block: %d\n", props.sharedMemPerBlock);
        printf("\tRegisters per Block: %d\n", props.regsPerBlock);
        printf("\tWarp Size: %d\n", props.warpSize);
        printf("\tMax Threads per Block: %d\n", props.maxThreadsPerBlock);
        printf("\tClock Rate: %d\n", props.clockRate);
        printf("\tMemory Clock Rate: %d\n", props.memoryClockRate);
        printf("\tMemory Bus Width: %d\n", props.memoryBusWidth);
        printf("\tSM Count: %d\n", props.multiProcessorCount);
        printf("\tThreads per SM: %d\n", props.maxThreadsPerMultiProcessor);
        printf("\tConcurrent Kernels: %s\n", props.concurrentKernels ? "Y":"N");
        //printf("\t: %d\n", props.);
    }
    return 0;
}
