colors=['red','green','blue']
countries=['W','N','Q','S','NS','V','T']
neighbors = {}
neighbors['W'] = ['N', 'S']
neighbors['N'] = ['W', 'Q', 'S']
neighbors['Q'] = ['N', 'S', 'NS']
neighbors['S'] = ['W','N','Q','NS','V']
neighbors['NS'] = ['Q', 'S','V']
neighbors['V']=['S','NS']
neighbors['T']=[]

colors_of_countries ={}

def cheaking_neighbors(country, color):
    for neighbor in neighbors.get(country): 
        color_of_neighbor = colors_of_countries.get(neighbor)
        if color_of_neighbor == color:
            return False
            
    return True

def get_color_for_country(country):
    for color in colors:
        if cheaking_neighbors(country, color):
            return color

def main():
    for country in countries:
        colors_of_countries[country] = get_color_for_country(country)

    print (colors_of_countries)


main()
