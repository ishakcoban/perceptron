function w = perceptron(classes, class_labels, w_init, rho)

w_old = w_init;
w_new =[];
results = [];

while(true)

    for i = 1:size(classes,2)

        x = [classes(1,i),classes(2,i),1]';

        if(class_labels(1,i) == 1)
            if(w_old' * x <= 0)
                w_new = w_old + rho * x;
                w_old = w_new;
            end
       
    
        
        else
            if(w_old' * x >= 0)
                w_new = w_old - rho  * x; 
                w_old = w_new;
            end
       

        end

    end

    results = [results,w_old];

    if(size(results,2) > 1 &&  results(1,size(results,2)) ==  results(1,size(results,2) - 1) && results(2,size(results,2)) ==  results(2,size(results,2) - 1) && results(3,size(results,2)) ==  results(3,size(results,2) - 1))
        w_new = w_old;
     
        break;
    end
end

w = w_new;

end