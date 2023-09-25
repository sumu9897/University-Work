percepts=[] 
table={('loc_A','Clean'):'Right',
       ('loc_A','Dirty'):'Suck',
       ('loc_B','Clean'):'Left',
       ('loc_B','Dirty'):'Suck'}


def table_driven_agent(percept):
    print('Perception Received: '+ str(percept))
    percepts.append(percept) 
    action = lookup(percept,table) 
    return action

def lookup(percept,table):
    
    return table[percept]

import random
Location = random.choice(['loc_A','loc_B'])
Condition = random.choice(['Clean','Dirty'])

for _ in range(8): 
    action = table_driven_agent((Location, Condition))
    print('Action Performed: '+ action)
    
    if action == 'Right':
        Location = 'loc_B'
        Condition = random.choice(['Clean','Dirty'])
    else :
        action == 'Left'
        Location = 'loc_A'
        Condition = random.choice(['Clean','Dirty'])
