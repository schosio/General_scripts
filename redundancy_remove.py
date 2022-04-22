# from joblib import Parallel, delayed
# import numpy as np
# import numexpr as ne
from datetime import datetime
a = open("all_100_subset.txt", "r")


def lis(file):
    col0 = []
    #col1 = []
    col1 = []
    col2 = []
    #col4 = []
    col3 = []

    for each_line in file:
        n = each_line.split()
        col0.append(n[0])
        #col1.append(n[1]) #used to be col1
        col1.append(n[2])  # used to be col2
        col2.append(n[3])  # used to be col3
        #col4.append(n[4]) # used to be col4
        col3.append(n[5])  # used to be col5

    output = open("output2.txt", "w")
    # a list of [indices,differences]
    c1 = [col0, col1, col2, col3]
    var = 0
    x = len(col0) - 1
    def ju(i, count):

            for j in range(i + 1, x):
                if i_1 == c1[0][j] and i_3 == c1[2][j]:
                    if i_2 != c1[1][j] and i_5 != c1[3][j]:
                        count[0] += 1

    for i in range(x):
        count = [0]
        var += 1
        i_1 = c1[0][i]
        i_3 = c1[2][i]
        i_2 = c1[1][i]
        i_5 = c1[3][i]
        if var%100 == 0:
            print(var)
            now = datetime.now()
            current_time = now.strftime("%H:%M:%S")
            print(current_time)
        # results = Parallel(n_jobs=-1)(delayed(ju)(i, count), self)
        ju(i, count)
        # print(str(count)[1:-1])
        output.write(i_1 + "\t" + str(count)[1:-1] + "\n")

lis(a)
