#Work Requrement 1 

#Exercise 1 
name= input('Enter your name here:')
age= int(input ('Enter your age here:'))
if age >= 18:
    print(f'Hello, ' + name + '! You are allowed to enter.')
else: 
    print(f'Sorry, ' + name + ' you are too young to enter.')


#Exercise 4 
fruit_basket = {
    'apple': 10,
    'banana': 5, 
    'orange': 8,
    'pear': 4
    }

fruit_name = input('Enter a fruit name here: ').lower() 
if fruit_name in fruit_basket: 
    print(f'We have {fruit_basket[fruit_name]} {fruit_name}(s) available." ')
    print('Here is the fruit name letter by letter: ')
    for letter in fruit_name: 
        print(letter)
else:
    print('We do not have that fruit, sorry.')


#Exercise 5
celsius = float(input('Enter temperasture in Celsius: '))
fahrenheit = (celsius * 9/5) + 32
print(f'Temperature in Fahrenheit: {fahrenheit}')
if fahrenheit > 80:
    print("It's hot outside!")
else: 
    print("It's not so hot outside.")
temperature_list = [celsius, fahrenheit]
print('Temperature values:', temperature_list)


#Exercise 6 
menu_items = {
    'coffee': 30,
    'tea': 20, 
    'juice': 25,
    'croissant': 32,
}

order = input('What would you like to order?').lower()
if order in menu_items:
 print(f'The price for {order} is {menu_items[order]}')
else:
    print('Item not found.')

print('\nFull Menu:')
print(menu_items)


#Exercise 7
numbers_input = input('Enter numbers separated by space here: ')
numbers = [int(num) for num in numbers_input.split()]
print('Numbers:', numbers)

smallest = numbers[0]
largest = numbers[0]
total = 0

for num in numbers: 
    if num < smallest: 
        smallest = num 
    if num > largest: 
        total += num 

average = total / len(numbers)

print(f"Smallest number: {smallest}")
print(f"Largest number: {largest}")
print(f"Average: {average}")

if average > 10: 
    print('Average is high')
else: 
    print('Average is low')


