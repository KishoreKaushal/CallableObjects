#include "utils.hpp"
#include <iostream>
#include <array>
#include <future>
#include <memory>

#define NUM_TASK 5

static std::array<std::unique_ptr<CallableSampleTask>, NUM_TASK> ar_uptr_task;

int main() {
    std::unique_ptr<CallableSampleTask> f = std::move(std::make_unique<CallableSampleTask>());
    (*f.get())();   // what is the error in this?

    ar_uptr_task.fill(std::move(std::make_unique<CallableSampleTask>()));

    for (int i = 0; i < NUM_TASK; i++) {
        // I want to do something like this.
        auto discard_ret = std::async(std::launch::async, (*ar_uptr_task[i].get()));
    }

    std::cout << "Hello, World!" << std::endl;
    return 0;
}
