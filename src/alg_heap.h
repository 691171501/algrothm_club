//
// Created by xuchaowu on 4/26/20.
//

#ifndef ALGORITHM_CLUB_HEAP_H
#define ALGORITHM_CLUB_HEAP_H


#include <algorithm>
#include <stddef.h>

namespace algorithm {

    template <class T, std::size_t N>
    class Heap {
    public:
        Heap() {
//            static_assert((N-1) & N == 0, "error");
        };

        Heap(const Heap &r) = delete;

        Heap& operator= (const Heap &r) = delete;

        void add(const T& t) {
            data_[size_++] = t;
            std::push_heap(data_, data_+size_);
        }

        const T& value() const {
            return data_[0];
        }


        int index(const T& t , int idx ) const {

            if (idx >= size_) return -1;

            if (data_[idx] == t) {
                return idx;
            }

            if (data_[idx] < t) {
                return  -1;
            }

            int left = idx * 2 + 1;
            int right = idx * 2 + 2;

            if (left < size_) {
                if (data_[left] == t) {
                    return left;
                }
            }

            if(right < size_) {
                if (data_[right] == t) {
                    return right;
                }
            }

            auto result_idx = index(t, left);
            if (result_idx == -1) {
                result_idx = index(t, right);
            }
            return result_idx;

        }


        const T& at(std::size_t idx) const {
            return data_[idx];
        }

        void remove(const T& t) {
          int idx = index(t, 0);
          if (idx != -1) {
              Swap(idx, size_-1);
              size_--;
              shiftup(idx);
              shiftdown(idx);
          }

        }

    private:
        void Swap(std::size_t lidx, std::size_t ridx) {
            auto t = data_[lidx];
            data_[lidx] = data_[ridx];
            data_[ridx] = t;
        }

        void shiftup(int idx){

            if (idx <= 0 )
                return;

            int parent_idx = floor((idx - 1) / 2);
            if (parent_idx < 0) return;
            if (data_[parent_idx] < data_[idx]) {
                Swap(idx, parent_idx);
                shiftup(parent_idx);
            }

        }

        void shiftdown(int idx) {
            if (idx >= size_)
                return;

            int left = 2 * idx + 1;
            int right = 2 * idx + 2;

            if ((left < size_) && (right < size_)) {
                int max_l_r = data_[left] < data_[right] ? right : left;
                if (data_[idx] < data_[max_l_r]) {
                    Swap(idx, max_l_r);
                    shiftdown(max_l_r);
                }

            } else if ((left < size_) && data_[idx] < data_[left]) {
                Swap(idx, left);
                shiftdown(left);
            } else if ((right < size_) && data_[idx] < data_[right]) {
                Swap(idx, right);
                shiftdown(right);
            }

        }


    private:
        T data_[N];
        std::size_t  size_{0};
    };

}


#endif //ALGORITHM_CLUB_HEAP_H
