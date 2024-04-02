#include "../c_check_input.h"

#include <stddef.h>

int main(void)
{
    int index = 7;
    int* a = &index;
    c_check_input_pointer(a, "alt");
    c_check_input_index(index, "index test", 0, 6);
    return 0;
}
