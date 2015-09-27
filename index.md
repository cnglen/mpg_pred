---
title       : MPG prediction
subtitle    : This is just a toy project :)
author      : Jacky Wang
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny, interactive, mathjax] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

In this report, we will analysis the mtcars data set to answer:
+ Is an automatic or manual transmission better for MPG?
+ Quantify the MPG difference between automatic and manual transmissions?

--- .class #id 

## Variables
The model is choosen by AIC in a stepwise algorithm, which suggests using
+ wt: weight (lb/1000)
+ am: automatic or manual transmission
+ qsec: 1/4 mile time
+ am*wt (interacton term)

Target:
+ mpg: Miles/(US) gallon

--- .class #id 

## Conclusion
Model:
+ $$mpg = -2.937 wt + 1.017 qsec + (14.079 - 4.141 wt)$$

Thus,
+ for fixed values of wt and qsec, the average difference of **mpg** is given by 14.079 - 4.141 wt

So, the answer of the target quesition can't be answered directly, it
dpends on wt, qsec.

--- .class #id 

## Demo
<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label for="wt">Weight (lb/1000),  range [1.5, 5.5]</label>
        <input id="wt" type="number" class="form-control" value="2"/>
      </div>
      <div class="form-group shiny-input-container">
        <label for="qsec">1/4 mile time, range [13.5, 23.5]</label>
        <input id="qsec" type="number" class="form-control" value="16.5"/>
      </div>
      <div class="form-group shiny-input-container">
        <label class="control-label" for="am">
          <h3>Transmission</h3>
        </label>
        <div>
          <select id="am"><option value="1" selected>Manual</option>
<option value="0">Automatic</option></select>
          <script type="application/json" data-for="am" data-nonempty="">{}</script>
        </div>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <div id="mpg" class="shiny-html-output"></div>
    <h3>Predicted mpg:</h3>
    <pre id="mpg" class="shiny-text-output"></pre>
  </div>
</div>

