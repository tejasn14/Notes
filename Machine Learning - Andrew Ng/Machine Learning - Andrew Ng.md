# 🤖 Machine learning

- Supervised ML
  - Regression - continous values
  - Classification - discrete values
- Unsupervised ML - here is the data set can you find some structure in the data set

<hr>

## _Linear Regression_

Hypothesis - the model/function that takes input and gives output<br>

## <b>h<sub>θ</sub>(x) = θ<sub>o</sub> + θ<sub>1</sub>x </b>==> Linear Regression with one variable<br> i.e y= mx + c

If you'll notice this is same as <b>y = mx + c</b></br>

_So in linear regression we want to minimize_

## $\frac{1}{2m}$ $\sum\limits_{i=1}^{m}$ ( h<sub>θ</sub> ( x<sup>( i )</sup> ) - y<sup>( i )</sup> ) <sup>2</sup>

where :

- **m** is the no of training examples
- **h<sub>θ</sub> ( x<sup>( i )</sup> )** is the predicted value
- **y<sup>( i )</sup>** is the actual value  
  and the square is to get rid of negative values

---

## J( θ<sub>0</sub> , θ<sub>1</sub> ) is called Cost function OR squared error function

## J( θ<sub>0</sub> , θ<sub>1</sub> ) = $\frac{1}{2m}$ $\sum\limits_{i=1}^{m}$ ( h<sub>θ</sub> ( x<sup>( i )</sup> ) - y<sup>( i )</sup> ) <sup>2</sup>

---

![img1](./0.png)
in the linear regression (ie straight line equation = y = mx + c) we are putting θ<sub>o</sub>=0 (c =0) i.e only taking equations that pass though the origin as shown in the right side of the drawing above

## J(1)

![img1](./1.png)

## J(0.5)

![img1](./2.png)

## J(0)

![img1](./3.png)
![img1](./4.png)

---

## Plot of J(θ<sub>1</sub> ) (i,e where )

![img1](./5.png)
the objective was to pick a value of θ<sub>1</sub> that minimises J(θ<sub>1</sub> )

here the minimum value θ<sub>1</sub> = 1 minimises J( θ<sub>1</sub> )  
this also corresponds to the line that best fits our data points !!
that is why we try to fit the curve  
Thus:

> minimising J( θ<sub>1</sub> ) is the same as find a curve that fits the data well

---
