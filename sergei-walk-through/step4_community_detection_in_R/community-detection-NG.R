setwd('/Applications/MAMP/htdocs/lesmiserables_DATA/sergei-walk-through')
library(igraph)

allgraph = read.graph("step3_prelim_gephi_gml_exports/all.gml", format=("gml"))
ebc <- edge.betweenness.community(misgraph, directed=F)
V(misgraph)$color <- ebc$membership
write.graph(misgraph, "step4_community_detection_in_R/all-NG.gml", format=("gml"))

book1graph = read.graph("step3_prelim_gephi_gml_exports/part1.gml", format=("gml"))
ebc1 <- edge.betweenness.community(book1graph, directed=F)
V(book1graph)$color <- ebc1$membership
write.graph(book1graph, "step4_community_detection_in_R/part1-NG.gml", format=("gml"))

book2graph = read.graph("step3_prelim_gephi_gml_exports/part2.gml", format=("gml"))
ebc2 <- edge.betweenness.community(book2graph, directed=F)
V(book2graph)$color <- ebc2$membership
write.graph(book2graph, "step4_community_detection_in_R/part2-NG.gml", format=("gml"))

book3graph = read.graph("step3_prelim_gephi_gml_exports/part3.gml", format=("gml"))
ebc3 <- edge.betweenness.community(book3graph, directed=F)
V(book3graph)$color <- ebc3$membership
write.graph(book3graph, "step4_community_detection_in_R/part3-NG.gml", format=("gml"))

book4graph = read.graph("step3_prelim_gephi_gml_exports/part4.gml", format=("gml"))
ebc4 <- edge.betweenness.community(book4graph, directed=F)
V(book4graph)$color <- ebc4$membership
write.graph(book4graph, "step4_community_detection_in_R/part4-NG.gml", format=("gml"))

book5graph = read.graph("step3_prelim_gephi_gml_exports/part5.gml", format=("gml"))
ebc5 <- edge.betweenness.community(book5graph, directed=F)
V(book5graph)$color <- ebc5$membership
write.graph(book5graph, "step4_community_detection_in_R/part5-NG.gml", format=("gml"))