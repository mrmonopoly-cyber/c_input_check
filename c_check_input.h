#pragma once

#include <stdint.h>

uint8_t 
c_check_input_pointer(const void* ptr, const char* ptr_name);

uint8_t 
c_check_input_index(const uint64_t index, const char* index_name,
        const uint64_t lw_bound, const uint64_t upper_bound);
