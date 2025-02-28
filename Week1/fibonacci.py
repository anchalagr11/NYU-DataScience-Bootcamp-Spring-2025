def fibonacci(num):
    f1, f2 = 0 , 1

    if num<1:
        return 

    print(f1, end=" ")

    for i in range(1, num):
        print(f2, end=" ")
        next_fibonacci = f1 + f2
        f1, f2 = f2, next_fibonacci


if __name__ == "__main__":
    fibonacci(10)
