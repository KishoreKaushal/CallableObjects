#include "utils.hpp"
#include <iostream>
#include <array>
#include <future>
#include <memory>

#define NUM_TASK 5

static std::array<std::unique_ptr<CallableSampleTask>, NUM_TASK> ar_uptr_task;

int main() {
    std::unique_ptr<CallableSampleTask> f = std::move(std::make_unique<CallableSampleTask>());
    (*f)();   // what is the error in this?


    for (int i = 0; i < NUM_TASK; i++) {
        ar_uptr_task[i] = std::make_unique<CallableSampleTask>();

        // I want to do something like this.
        auto discard_ret = std::async(std::launch::async, std::ref(*ar_uptr_task[i]));
    }

    return 0;
}
