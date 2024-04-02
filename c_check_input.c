#include "c_check_input.h"
#include <stdio.h>

#define GENERAL_ERROR(WHAT,ERR) fprintf(stderr, "GENERAL_ERROR %s %s\n", WHAT,ERR)
uint8_t 
c_check_input_pointer(const void* ptr, const char* ptr_name)
{
    if (!ptr) {
        GENERAL_ERROR(ptr_name, "is NULL");
        return 0;
    }

    return 1;
}

uint8_t 
c_check_input_index(const uint64_t index, const char* index_name,
        const uint64_t lw_bound, const uint64_t upper_bound)
{
    if (index >= lw_bound && index <= upper_bound) {
        GENERAL_ERROR(index_name, "has invalid range");
        return 0;
    }

    return 1;
}
