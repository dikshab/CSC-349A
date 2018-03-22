function [vol] = height(h)
    vol = (pi*h*h*(12.3-h))/3 - 45;
end