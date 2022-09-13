import random
from pyvis.network import Network

def generate_edge():
  s = random.randint(1,10)
  d = random.randint(1,10)
  return (s,d)
 
def generate_size_node():
  v = random.randint(5,20)
  return v
 
def generate_color():
  random_number = random.randint(0,16777215)
  hex_number = str(hex(random_number))
  hex_number ='#'+ hex_number[2:]
  return hex_number
 
 
g_complete = Network(height='600px',width='50%',
              bgcolor='white',font_color="red",notebook=True,
              heading="A Complete Networkx Graph",directed=True)
 
colors=[]
for i in range(1,11):  
  c = generate_color()
  colors.append(c)
  while(c in colors):
      c = generate_color()
  colors.append(c)
 
  val = generate_size_node()
  b = random.randint(3,5)
 
  g_complete.add_node(i,label=str(i),color=c,value=val,
                      title="Hello! I am Node "+str(i),borderWidth=b)
i=0
chosen_set = []
while(i!=20):
  eg = generate_edge()
  if(eg[0]!=eg[1] and not (eg in chosen_set)):
      chosen_set.append(eg)
      g_complete.add_edge(eg[0],eg[1])
      i+=1
 
g_complete.show_buttons(['physics'])
g_complete.show('ini.html')