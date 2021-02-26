#ifndef UTILITY_HPP
#define UTILITY_HPP

#include <iostream>
#include <thread>
#include <future>
#include <functional>
#include <chrono>

using std::chrono::milliseconds;

class CallableStoppableTask {
    std::promise<void>  exit_signal;
    std::future<void>   future_obj;

public:

    CallableStoppableTask() : future_obj(exit_signal.get_future()) {}

    CallableStoppableTask(const CallableStoppableTask&) = delete;
    CallableStoppableTask& operator=(const CallableStoppableTask&) = delete;

    virtual void run() = 0;

    void operator()() { run(); }

    bool is_stop_requested(int timeout_milliseconds = 0) const {
        return (future_obj.wait_for(milliseconds(timeout_milliseconds)) == std::future_status::ready);
    }

    void request_stop() { exit_signal.set_value(); }
};


struct Car {
    int     model;
    int     price;

    explicit Car(const int& arg_model = -1, const int& arg_price = -1)
    : model(arg_model), price(arg_price) {}
};

class CallableSampleTask : public CallableStoppableTask {
    
    CallableSampleTask(const CallableSampleTask&) = delete;

    CallableSampleTask& operator=(const CallableSampleTask&) = delete;

    void run() override {
        std::cout << "Running Some Car Sample Task.. " << std::endl;
    }

public:
    CallableSampleTask(const Car& arg_car = Car()) {} 
};

#endif