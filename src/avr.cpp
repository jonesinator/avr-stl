#include <stdlib.h>

extern "C" void __cxa_pure_virtual(void) __attribute__ ((__noreturn__));
extern "C" void __cxa_deleted_virtual(void) __attribute__ ((__noreturn__));

void __cxa_pure_virtual(void) {
    abort();
}

void __cxa_deleted_virtual(void) {
    abort();
}

void* operator new(size_t size) {
    return malloc(size);
}

void* operator new[](size_t size) {
    return malloc(size);
}

void* operator new(size_t size __attribute__ ((unused)), void* ptr) {
	return ptr;
}

void operator delete(void* ptr) {
    free(ptr);
}

void operator delete[](void* ptr) {
    free(ptr);
}

void operator delete(void* ptr, size_t size __attribute__ ((unused))) {
    free(ptr);
}

void operator delete[](void* ptr, size_t size __attribute__ ((unused))) {
    free(ptr);
}
