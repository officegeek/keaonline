# Comment Code Block Ctrl+K+C/Ctrl+K+U

class Medarbejder1:
    'Dette er en medarbejder klasse - dok string'
    def __init__(self, navn, afdeling):
        self.navn = navn
        self.afdeling = afdeling

m1 = Medarbejder1('Ole', 'Salg')

print(m1.navn)
print(m1.afdeling)

print()
print('Built-in Class Attributes')
print(Medarbejder1.__dict__)
print(Medarbejder1.__doc__)
print(Medarbejder1.__name__)
print(Medarbejder1.__module__)
print(Medarbejder1.__bases__)


# # Object Methods
# class Medarbejder2:
#     'Medarbejder klasse med antal'
    
#     medAntal = 0

#     def __init__(self, navn, afdeling):
#         self.navn = navn
#         self.afdeling = afdeling
#         Medarbejder2.medAntal += 1
    
#     def namefunc(self):
#         print(f'Mit navn er {self.navn} og jeg arbejder i {self.afdeling}')

#     def visAntal(self):
#         print('Total antal medarbejdere %d ' % Medarbejder2.medAntal)

# # Print namefunc
# m2 = Medarbejder2('Peter', 'marketing')
# print(m2.namefunc())

# # Print antal
# m3 = Medarbejder2('Ole', 'Salg')
# print(Medarbejder2.medAntal)

# # Modify object
# m2.afdeling = 'salg'
# m2.namefunc()

# # Delete properties
# # del m2.afdeling
# print(m2.navn)
# #print(m2.afdeling)

# # Delete Objects
# # del m2
# #print(m2.navn)

# # pass statement