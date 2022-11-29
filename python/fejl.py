# Simpel

#print(x)
# Fejler fordi x ikke er defineret

try:
    print(x)
except:
    print('Der er opstået en fejl')


# Flere beskeder
try:
    print(x)
except NameError:
    print("x er ikke defineret")
except:
    print('Der er opstået en fejl')

# else
x = 20

try:
    print(x)
except NameError:
    print("x er ikke defineret")
except:
    print('Der er opstået en fejl')
else:
    print('Ingen fejl')



# finally
try:
  f = open('demofile.txt')
  try:
    f.write('Noget tekst')
  except:
    print('Kunne ikke skrive til filen')
  finally:
    f.close()
except:
  print('Kunne ikke åbne filen')

# raise
x = -3

if x < 0:
    raise Exception('Du må ikke bruge et negativt nummer')

# TypeError
x = 'hello'

if not type(x) is int:
    raise TypeError('Kun tal')
