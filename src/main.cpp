#include <iostream>
#include "alg_heap.h"


void del_max() {
    int data[] = {4,3,6,7,3,8,1,2,5};
    algorithm::Heap<int, 16> h;
    for (auto d : data) {
        h.add(d);
    }

    int i = 0;
    std::cout << "start del max.... " << std::endl;
    while (i < 9) {
        auto t = h.at(0);
        std::cout << "del_data:" << t <<std::endl;
        h.remove(t);
        i++;
    }


}


void del_min() {
    int data[] = {4,3,6,7,3,8,1,2,5};
    algorithm::Heap<int, 16> h;
    for (auto d : data) {
        h.add(d);
    }

    std::sort(data, data+9);
    int i = 0;
    std::cout << "start del min.... " << std::endl;
    while (i < 9) {

        int k =0;
        while (k < (9 -i)) {
            std::cout << "data:" << h.at(k) << ",";
            k++;
        }
        std::cout << std::endl;
        auto t = data[i];
        std::cout << "del_data:" << t <<std::endl;
        h.remove(t);
        i++;
    }


}

int main() {
    int data[] = {4,3,6,7,3,8,1,2,5};

    algorithm::Heap<int, 16> h;
    for (auto d : data) {
        h.add(d);
    }


    int i = 0;
    while (i < 9) {
        std::cout << "index:" << i <<  ", data: " << h.at(i) << ", d-i:"  << h.index(h.at(i), 0) << std::endl;
        i++;
    }

    del_min();


    return 0;
}