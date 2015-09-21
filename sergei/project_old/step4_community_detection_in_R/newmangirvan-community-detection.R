setwd("/Users/matt/Desktop/new_examples")
library(igraph)

misgraph = read.graph("jean-complete.gml", format=("gml"))
ebc <- edge.betweenness.community(misgraph, directed=F)
V(misgraph)$color <- ebc$membership
write.graph(misgraph, "jean-complete-NG.gml", format=("gml"))

book1graph = read.graph("jean-complete-book1.gml", format=("gml"))
ebc1 <- edge.betweenness.community(book1graph, directed=F)
V(book1graph)$color <- ebc1$membership
write.graph(book1graph, "jean-complete-book1-NG.gml", format=("gml"))

book2graph = read.graph("jean-complete-book2.gml", format=("gml"))
ebc2 <- edge.betweenness.community(book2graph, directed=F)
V(book2graph)$color <- ebc2$membership
write.graph(book2graph, "jean-complete-book2-NG.gml", format=("gml"))

book3graph = read.graph("jean-complete-book3.gml", format=("gml"))
ebc3 <- edge.betweenness.community(book3graph, directed=F)
V(book3graph)$color <- ebc3$membership
write.graph(book3graph, "jean-complete-book3-NG.gml", format=("gml"))

book4graph = read.graph("jean-complete-book4.gml", format=("gml"))
ebc4 <- edge.betweenness.community(book4graph, directed=F)
V(book4graph)$color <- ebc4$membership
write.graph(book4graph, "jean-complete-book4-NG.gml", format=("gml"))

book5graph = read.graph("jean-complete-book5.gml", format=("gml"))
ebc5 <- edge.betweenness.community(book5graph, directed=F)
V(book5graph)$color <- ebc5$membership
write.graph(book5graph, "jean-complete-book5-NG.gml", format=("gml"))