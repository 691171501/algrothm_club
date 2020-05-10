//
// Created by jingzheng on 5/10/20.
//

#include <glog/logging.h>
#include <gtest/gtest.h>


TEST(RBTree, sampletest) {

    EXPECT_EQ(1,1);
}

int main(int argc,char *argv[])
{
    testing::InitGoogleTest(&argc, argv);//将命令行参数传递给gtest
    return RUN_ALL_TESTS();   //RUN_ALL_TESTS()运行所有测试案例
}

