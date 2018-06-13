# -*- coding:utf-8 -*-
import json
import psycopg2

def main():
    #第一
    if True:
        print ("hello!")#第二
    else:
        print ("false!")
        print ("234")
    i = "asfgfhgfbvxczXZxcvcbcxzzZzvvdS"
    print (i[0:-10])
    # print ('hele \"\"')

    s = 'sjixvjunvkn  ada \
            sadv vzv,ba \
            aaaa '
    print (s)
    print \
    (s)

    print(2+3)
    print(3*8)
    print('2'+'2')
    print()

def ying():

    number = 23
    runing = True
    while runing:
        guess = int(inport('Enter an integer : '))
        if guess == number:
            print ('2')
            runing = False
        elif guess < number:
            print('3')
        else:
            print('4')
    print('thisofer')

def text():


    conn = psycopg2.connect(database="testdb", user="postgres", password="pass123", host="127.0.0.1", port="5432")

    print ("Opened database successfully")









if __name__ == '__main__':
    main()
    # ying()
    text()
