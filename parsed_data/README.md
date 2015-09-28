This folder contains files generated with [sgbbookparser_java](https://github.com/mmlc/sgbbookparser_java) from the file 'jean-complete.dat' located in the higher-level folder.

Every effort is made to regnerate these files with updates to jean-complete.dat.
However, since these files are derived from jean-complete.dat without the use of an 
automated process, the information contained in these files may not represent the
most recent version of jean-complete.dat

Example executions:

     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./part1_nodes.csv ./part1_edges.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html "1\.(.*)"
     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./part2_nodes.csv ./part2_edges.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html "2\.(.*)"
     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./part3_nodes.csv ./part3_edges.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html "3\.(.*)"
     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./part4_nodes.csv ./part4_edges.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html "4\.(.*)"
     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./part5_nodes.csv ./part5_edges.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html "5\.(.*)"
     java -jar ~/Desktop/BookParser.jar ../jean-complete.dat ./jean-complete-node.csv ./jean-complete-edge.csv ./jean-complete-character-table.html ./jean-complete-chapter-table.html
