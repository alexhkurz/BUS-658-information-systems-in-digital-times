# Macroeconomic Growth Models: From Stagnation to Infinity

This handout explores the evolution of growth theory, moving from the "dismal" trap of Malthus to the modern engines of endogenous growth.

---

## Page 1: The Malthusian Model
### The Economics of the Trap

> "The power of population is so superior to the power of the earth to produce subsistence for man, that premature death must in some shape or other visit the human race." — **Thomas Robert Malthus**

Before the Industrial Revolution, humanity lived in what we now call the "Malthusian Trap." Malthus viewed humans as biologically driven to reproduce whenever food was plenty. This created a tragic cycle: any technological breakthrough that increased food production merely led to more people, eventually driving everyone back down to the level of bare subsistence. 

#### Key Assumptions
* **Fixed Factor:** Land ($L$) is constant.
* **Production:** $Y = z F(L, N)$, where $N$ is population and $z$ is technology.
* **Endogenous Population:** Population growth increases with consumption per capita ($c$).



#### Exercise: Why We Can’t Have Nice Things
Let the production function be $Y = zN^\alpha L^{1-\alpha}$. Since $L$ is fixed (normalized to 1), $Y = zN^\alpha$. Consumption per capita is $y = \frac{Y}{N} = zN^{\alpha-1}$.

**1. Find the growth rate of per capita income ($\frac{\dot{y}}{y}$) in the steady state.**
If population growth depends on income, say $\frac{\dot{N}}{N} = n(y)$, the steady state occurs where $y$ is constant ($y^*$). 

**2. Demonstrate that asymptotic growth is zero.**
Differentiate $y$ with respect to time ($t$):
$$\dot{y} = \frac{d}{dt}(zN^{\alpha-1}) = (\alpha-1)zN^{\alpha-2} \dot{N}$$
To find the growth rate, divide by $y$:
$$\frac{\dot{y}}{y} = \frac{(\alpha-1)zN^{\alpha-2} \dot{N}}{zN^{\alpha-1}} = (\alpha-1)\frac{\dot{N}}{N}$$
Since $0 < \alpha < 1$, the term $(\alpha-1)$ is **negative**. 

> **Note on Per-Capita Output:** In the Malthusian world, per-capita output ($y$) is tethered to a biological "subsistence level." While a technology shock ($z \uparrow$) temporarily raises $y$, the resulting population boom eventually dilutes the capital (land) per person, dragging $y$ back to its original equilibrium.

---

## Page 2: The Solow-Swan Model
### The Transition to Capital

> "The recipe for growth is simple: save, invest, and hope for a better engine." — **Robert Solow**

In 1956, Robert Solow shifted the focus from land to **capital ($K$)**. He argued that while saving and investment are crucial, they suffer from diminishing returns. You can only give a worker so many shovels before an extra shovel doesn't help them dig any faster. In the Solow model, sustained growth in living standards is only possible through "Exogenous Technical Progress"—the "Residual" we can't explain by just adding more stuff.

#### Key Assumptions
* **Diminishing Returns:** Marginal product of capital ($MPK$) falls as $K$ increases ($\alpha < 1$).
* **Exogenous Tech:** Technology ($A$) grows at a constant rate $g$.
* **Constant Saving Rate:** A fixed fraction ($s$) of output is invested.



#### Exercise: The Asymptotic Growth Rate
Consider the intensive form production function $y = k^\alpha$ where $k = K/AL$ (capital per effective worker). The fundamental law of motion is $\dot{k} = sk^\alpha - (n + g + \delta)k$.

**1. Find the steady state capital $k^*$.**
Set $\dot{k} = 0$:
$$sk^\alpha = (n + g + \delta)k \implies k^* = \left( \frac{s}{n+g+\delta} \right)^{\frac{1}{1-\alpha}}$$

**2. Show the asymptotic growth rate of total output ($Y$).**
Total output is $Y = y \cdot AL = k^\alpha AL$. In the steady state, $k$ is constant ($k^*$). Therefore, the growth rate of $Y$ is:
$$\frac{\dot{Y}}{Y} = \frac{d}{dt} \ln(k^{*\alpha} A L) = \alpha \frac{\dot{k^*}}{k^*} + \frac{\dot{A}}{A} + \frac{\dot{L}}{L}$$
Since $\dot{k^*} = 0$, the expression simplifies to:
$$\frac{\dot{Y}}{Y} = 0 + g + n$$

> **Note on Per-Capita Output:** Unlike Malthus, Solow allows for sustained increases in living standards. However, per-capita output ($y = Y/L$) grows asymptotically at rate $g$. This means that without continuous improvements in technology, capital accumulation alone cannot drive long-run growth in income per person.

---

## Page 3: The AK Model
### The Engine of Ideas

> "The most important inputs into the modern production process are the ideas that tell us how to use the physical inputs." — **Benjamin F. Jones**

The AK model is the simplest version of "Endogenous Growth." It throws out the assumption of diminishing returns to capital by redefining "Capital" ($K$) to include **Human Capital** and **Knowledge**. Unlike a shovel, an idea (like a line of code) can be used by everyone simultaneously without being "used up." In this world, policy and saving actually *can* change the permanent growth rate.

#### Key Assumptions
* **Constant Returns to Scale:** $Y = AK$.
* **No Diminishing Returns:** The $MPK$ is constant ($A$, where $\alpha = 1$).
* **Endogenous Growth:** Growth is generated within the system, not by an outside $g$.



#### Exercise: Growth as a Function of Investment
Let the economy's capital accumulate via $\dot{K} = sY - (n + \delta)K$, where $s$ is the saving rate, $n$ is population growth, and $\delta$ is depreciation. Assume technology $A$ can also grow at rate $g$.

**1. Derive the growth rate of output ($\frac{\dot{Y}}{Y}$).**
Starting with $Y = AK$, take the natural log of both sides:
$$\ln Y = \ln A + \ln K$$
Differentiate with respect to time:
$$\frac{\dot{Y}}{Y} = \frac{\dot{A}}{A} + \frac{\dot{K}}{K}$$
Substitute the law of motion for $K$:
$$\frac{\dot{Y}}{Y} = g + \frac{sY - (n + \delta)K}{K} \implies \gamma_Y = g + sA - (n + \delta)$$

> **Note on Per-Capita Output:** In the AK model, per-capita output ($\gamma_y = \gamma_Y - n$) becomes $g + sA - \delta - 2n$ (if $n$ enters twice via dilution) or more simply, growth is a linear function of $s$. This implies that a society that saves more or becomes more efficient at creating ideas can permanently accelerate the growth of its standard of living.

---

### Summary Comparison Table

| Feature | Malthusian Model | Solow-Swan Model | AK Model |
| :--- | :--- | :--- | :--- |
| **Key Accumulable Factor** | None (Land is fixed) | Physical Capital ($\alpha < 1$) | Broad Capital/Ideas ($\alpha = 1$) |
| **Population Growth** | Endogenous (increases with $y$) | Exogenous ($n$) | Exogenous or Normalized |
| **Long-Run Per-Capita Growth** | **0** | **$g$** | **$sA - (n + \delta) + g$** |
| **Saving Rate Affects Growth?** | No | No (Level effect only) | **Yes** (Permanent effect) |
| **Convergence?** | Yes (to subsistence $\bar{y}$) | Yes (Conditional) | **No** (Growth can diverge) |
| **Primary Policy Implication** | Technology $\to$ More people | Technology $\to$ Higher income | Higher $s$ or $A$ $\to$ Faster growth |