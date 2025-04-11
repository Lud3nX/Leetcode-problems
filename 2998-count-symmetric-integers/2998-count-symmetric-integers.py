class Solution(object):
    def countSymmetricIntegers(self, low, high):
        lista = list(range(low,high+1))
        n = 0
        for i in lista:
            dig = list(int(d) for d in str(i))
            if len(dig) %2 == 0:
                B = dig[:len(dig)//2]
                C = dig[len(dig)//2:]
                if sum(B) == sum(C):
                    n += 1
        return(n)
        