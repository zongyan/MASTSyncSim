clear all;
close all;
clc;

%% Network Topology Configuration

% random network generation
nNode=50; nEdge=70; % minimum num edges for undirected connected 
                    % graph: N-1
                    % maximum num edges for undirected connected 
                    % graph: N*(N-1)/2
nSample=1000;

[G Tree]=genNet(nNode,nEdge,nSample,true);
for i=1:1:nSample
    if isempty(Tree(:,:,i)) % true for empty array
       disp('Network generation and simlation cancelled');
       return;
    end
    fprintf("the TREE is used for time sync. %d nodes, %d edges\n", ...
        numedges(graph(Tree(:,:,i))),numedges(graph(Tree(:,:,i))));    
end 

% Save variables to file
save("tree.mat",'Tree');
save("graph.mat",'G');


