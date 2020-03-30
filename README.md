# Koutecky-Levich equation
Tool to generate Koutecky-Levich plots and calculate electron transfer numbers from linear sweep voltammetry (LSV) curves in oxygen reduction reaction (four electron transfer ORR): 

$$
O_2+2H_2O+4e^- \rightleftharpoons OH^-
$$

## Why we need electron transfer numbers?

As we can see in the chemical reaction formula in ORR, an ideal ORR reaction should be a **four electron process**. But the reality is, it is not always that ideal. Sometime **two electron process** ORR is common: 

$$
\text{O}_2 + 2\text{H}_2 \text{O} + 2\text{e}^- \rightleftharpoons 2\text{H}_2 \text{O}_2
$$
Use the K-L method, we can know the electron transfer numbers **at specific potentials**. 

## What is Koutecky-Levich equation?

Koutecky-Levich equation is used in electrochemistry to describe i-v relation in diffusion limited reaction, such as ORR. Usually, it is written as: 

$$
\frac{1}{i} = \frac{1}{i_k} + \frac{1}{i_l} = \frac{1}{i_k} + \frac{1}{0.62 nFAD^{2/3} \omega^{1/2} \mu^{-1/6} C_o^*}
$$

However, a more common form is applied to figure out the **electron transfer numbers (*n*)** for the LSV curves. 

$$
i^{-1} 
= \frac{1}{i_k} + B \omega^{-1/2}
$$

and

$$
B = \frac{1}{0.62 FAD^{2/3} \mu^{-1/6} C_o^*} \cdot \frac{1}{n}
$$

Therefore, there are some fitting need to extract the slopes above and then apply it to calculation the *n*. This **MATLAB** code is based on the equations above. 

## Example

This code is written in MATLAB 2017b. But it should work in any version of MATLAB. 

Run a test using the code as follows: 

```matlab
KLeq_main('n-carbon.mat')
```

The default data has **14 columns**, corresponding to LSV curves obtained at **225, 400, 625, 900, 1225, 1600, 2025 rpm** (each LSV has 2 columns, 1 for potential and 1 for current).  