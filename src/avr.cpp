#include <stdlib.h>

__extension__ typedef int __guard __attribute__((mode (__DI__)));

extern "C" int __cxa_guard_acquire(__guard*);
extern "C" void __cxa_guard_release(__guard*);
extern "C" void __cxa_guard_abort(__guard*);
extern "C" void __cxa_pure_virtual(void) __attribute__ ((__noreturn__));
extern "C" void __cxa_deleted_virtual(void) __attribute__ ((__noreturn__));

int __cxa_guard_acquire(__guard* g) {
    return !*(char*)(g);
}

void __cxa_guard_release(__guard* g) {
    *(char*)g = 1;
}

void __cxa_guard_abort(__guard* g __attribute__ ((unused))) {
}

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
