function [tree] = DECISION_TREE_LEARNING(examples,attributes,binary_targets)
%DECISION-TREE-LEARNING Summary of this function goes here
%   Detailed explanation goes here

% all examples have the same value of binary_targets
    if all(binary_targets)
        tree.op = [];
        tree.kids = {};
        tree.class = 1;
        return
    elseif ~any(binary_targets)
        tree.op = [];
        tree.kids = {};
        tree.class = 0;
        return;
% all attributs is empty   
    elseif isempty(attributes)
        if(sum(binary_targets)>size(binary_targets) - sum(binary_targets))
            tree.op = [];
            tree.kids = {};
            tree.class = 1;
        return
        
        else
            tree.op = [];
            tree.kids = {};
            tree.class = 0;
            return
        end
       
    %else
    %best_attribude = CHOOSE-BEST-DECISION-ATTRIBUTE(examples,attributs,binary_targets)
    %tree.op = best_attribute;
    end
    
    
end

