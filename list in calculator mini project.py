user=int(input("enter the total number of value:"))

values=[]

for i in range(1,user+1):
    value=int(input(f"enter your {i} value:"))
    values.append(value)

print("enter your choices:")
print("1 = add")
print("2 = sub")
print("3 = multi")
print("4 = divide")

choice =int(input("enter your choices:"))
result = values[0]
if choice==1:
    for value in values[1:]:
        result=result+value
    operation="addition"
elif choice==2:
    for value in values[1:]:
        result=result-value
    operation="subraction"
elif choice==3:
    for value in values[1:]:
        result=result*value
    operation="multiplication"
elif choice==4:
    for value in values[1:]:
        result=result/value
    operation="division"
else:
    result="invalid choice"
    operation="invalid operation"
print(f"the {operation} result is : {result}")
