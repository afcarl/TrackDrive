function othercars = update_othercars(othercars, sim)

for i = 1:othercars.n
    othercars.car{i}.pos ...
        = update_pos(othercars.car{i}.pos, othercars.car{i}.vel, sim.T); 
    othercars.car{i}.bd ...
        = get_carshape(othercars.car{i}.pos ...
        , othercars.car{i}.W, othercars.car{i}.H);
end
