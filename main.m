load('bim488_hw2.mat')

w_init1 = [1, 1, -0.5]';
w_init2 = [1, 1, 0.5]';
rho = 0.01;

finalWeightVector1 = perceptron(classes,class_labels,w_init1,rho);
finalWeightVector2 = perceptron(classes,class_labels,w_init2,rho);

scatter(classes(1,:),classes(2,:))

x1 = [finalWeightVector1(3,1) / -finalWeightVector1(1,1) 0];
y1 = [0 finalWeightVector1(3,1) / -finalWeightVector1(2,1)];
line(x1,y1)
x2 = [finalWeightVector2(3,1) / -finalWeightVector2(1,1) 0];
y2 = [0 finalWeightVector2(3,1) / -finalWeightVector2(2,1)];
line(x2,y2)
