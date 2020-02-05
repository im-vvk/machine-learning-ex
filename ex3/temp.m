mahImg = imageTo20x20Gray('img2.jpg');
%p = predictOneVsAll(all_theta, mahImg)
p = predict(Theta1, Theta2, mahImg)% calls the neural network prediction method
