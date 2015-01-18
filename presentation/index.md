---
title       : Shiny app for prediciting miles per gallon
subtitle    : 
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

* This presentation presents my Shiny app for the Data Products course's course project
* The app can be found [here](https://froys4000.shinyapps.io/sh_app/)

--- .class #id 

## Aim of the app

* The app uses the `mtcars` data set from R
* This is a data set of 32 cars
* One of the variables in the data set is miles per gallon (MPG)
* There 10 other variables
* The aim is to use these variables to predict miles per gallon

---

## How does the app work?

* The app allows the user to select which variables to use as predictors
* Then it fits a linear model with those variables as predictors, and MPG as the outcome
* It also produces a pairs scatterplot for all the variables included in the model

---

## Example

For instance, if the user selects the horse power and transmission variables, then the program runs the following code


```r
summary(lm(mpg ~ hp + am, data=mtcars))
```

```
## 
## Call:
## lm(formula = mpg ~ hp + am, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.3843 -2.2642  0.1366  1.6968  5.8657 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 26.584914   1.425094  18.655  < 2e-16 ***
## hp          -0.058888   0.007857  -7.495 2.92e-08 ***
## am           5.277085   1.079541   4.888 3.46e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.909 on 29 degrees of freedom
## Multiple R-squared:  0.782,	Adjusted R-squared:  0.767 
## F-statistic: 52.02 on 2 and 29 DF,  p-value: 2.55e-10
```






