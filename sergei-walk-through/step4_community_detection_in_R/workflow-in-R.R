### Workflow ###

# Start #

# Export your graphs from Gephi #

# Set up the workspace
setwd('/Applications/MAMP/htdocs/lesmiserables_DATA/sergei-walk-through');
library(igraph);

# Load graphs into R
allgraph   =   read.graph("step3_prelim_gephi_gml_exports/all.gml",   format=("gml"));
book1graph =   read.graph("step3_prelim_gephi_gml_exports/book1.gml", format=("gml"));
book2graph =   read.graph("step3_prelim_gephi_gml_exports/book2.gml", format=("gml"));
book3graph =   read.graph("step3_prelim_gephi_gml_exports/book3.gml", format=("gml"));
book4graph =   read.graph("step3_prelim_gephi_gml_exports/book4.gml", format=("gml"));
book5graph =   read.graph("step3_prelim_gephi_gml_exports/book5.gml", format=("gml"));

allgraph_w   = read.graph("step3_prelim_gephi_gml_exports/all.gml",   format=("gml"));
book1graph_w = read.graph("step3_prelim_gephi_gml_exports/book1.gml", format=("gml"));
book2graph_w = read.graph("step3_prelim_gephi_gml_exports/book2.gml", format=("gml"));
book3graph_w = read.graph("step3_prelim_gephi_gml_exports/book3.gml", format=("gml"));
book4graph_w = read.graph("step3_prelim_gephi_gml_exports/book4.gml", format=("gml"));
book5graph_w = read.graph("step3_prelim_gephi_gml_exports/book5.gml", format=("gml"));

# Run Newman Girvan community detection algorithm and store results in ebc*(_w) variable #
ebc0 <- edge.betweenness.community(allgraph,   directed = FALSE, weights = NULL);
ebc1 <- edge.betweenness.community(book1graph, directed = FALSE, weights = NULL);
ebc2 <- edge.betweenness.community(book2graph, directed = FALSE, weights = NULL);
ebc3 <- edge.betweenness.community(book3graph, directed = FALSE, weights = NULL);
ebc4 <- edge.betweenness.community(book4graph, directed = FALSE, weights = NULL);
ebc5 <- edge.betweenness.community(book5graph, directed = FALSE, weights = NULL);

ebc0_w <- edge.betweenness.community(allgraph_w,   directed = FALSE, weights = E(allgraph_w)$value);
ebc1_w <- edge.betweenness.community(book1graph_w, directed = FALSE, weights = E(book1graph_w)$value);
ebc2_w <- edge.betweenness.community(book2graph_w, directed = FALSE, weights = E(book2graph_w)$value);
ebc3_w <- edge.betweenness.community(book3graph_w, directed = FALSE, weights = E(book3graph_w)$value);
ebc4_w <- edge.betweenness.community(book4graph_w, directed = FALSE, weights = E(book4graph_w)$value);
ebc5_w <- edge.betweenness.community(book5graph_w, directed = FALSE, weights = E(book5graph_w)$value);

# Add new "color" attribute to each vertex that equals to the calculated modularity class value #
V(allgraph)$color <-   ebc0$membership;
V(book1graph)$color <- ebc1$membership;
V(book2graph)$color <- ebc2$membership;
V(book3graph)$color <- ebc3$membership;
V(book4graph)$color <- ebc4$membership;
V(book5graph)$color <- ebc5$membership;

V(allgraph_w)$color <-   ebc0_w$membership;
V(book1graph_w)$color <- ebc1_w$membership;
V(book2graph_w)$color <- ebc2_w$membership;
V(book3graph_w)$color <- ebc3_w$membership;
V(book4graph_w)$color <- ebc4_w$membership;
V(book5graph_w)$color <- ebc5_w$membership;

# Write back to gml files # todo: should they be different than originals?
write.graph(allgraph,   "step4_community_detection_in_R/all-NG.gml",   format = ("gml"));
write.graph(book1graph, "step4_community_detection_in_R/book1-NG.gml", format = ("gml"));
write.graph(book2graph, "step4_community_detection_in_R/book2-NG.gml", format = ("gml"));
write.graph(book3graph, "step4_community_detection_in_R/book3-NG.gml", format = ("gml"));
write.graph(book4graph, "step4_community_detection_in_R/book4-NG.gml", format = ("gml"));
write.graph(book5graph, "step4_community_detection_in_R/book5-NG.gml", format = ("gml"));

write.graph(allgraph_w,   "step4_community_detection_in_R/all-NG_w.gml",   format = ("gml"));
write.graph(book1graph_w, "step4_community_detection_in_R/book1-NG_w.gml", format = ("gml"));
write.graph(book2graph_w, "step4_community_detection_in_R/book2-NG_w.gml", format = ("gml"));
write.graph(book3graph_w, "step4_community_detection_in_R/book3-NG_w.gml", format = ("gml"));
write.graph(book4graph_w, "step4_community_detection_in_R/book4-NG_w.gml", format = ("gml"));
write.graph(book5graph_w, "step4_community_detection_in_R/book5-NG_w.gml", format = ("gml"));

# End #