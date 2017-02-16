% Calculates shortest distance from node 'i' to all other nodes.
function L = shortest_from(A,i)

Q=graphallshortestpaths(sparse(A));
L=Q(i,:)';