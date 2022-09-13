from pyvis.network import Network

g = Network()
g.add_node(0)
g.add_node(1)
g.add_edge(0, 1)
g.show("basic.html")