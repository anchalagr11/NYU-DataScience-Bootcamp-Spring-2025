
def oddindices(nums):
    n = len(nums)

    for i in range(n):
        if i%2!= 0:
            print(nums[i])


if __name__ == "__main__":
    nums = [1,3,5,2,4,4,2,6,76,1213,53,67]
    oddindices(nums)
