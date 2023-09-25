class pyramid:
  def  __init__(abc, rows):
   abc.rows=rows
   
  
  rows = int(input("Enter number of rows: "))

  j = 0

  for i in range(1, rows+1):
    for space in range(1, (rows-i)+1):
          print(end="  ")
   
    while j!=(2*i-1):
          print("* ", end="")
          j += 1
   
    j = 0
    print()

p=pyramid
