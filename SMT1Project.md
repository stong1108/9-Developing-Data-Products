States Statistics Shiny App
========================================================
author: Stephanie Tong
date: 2015 December 27

Introduction
========================================================
Have you ever wondered what would happen if you found one of these?

<center><img src="http://www.giantfreakinrobot.com/wp-content/uploads/2012/11/bttf_time_machine_ebay_lead.jpg" alt="Drawing" style="width: 500px;"/> <img src="http://i.gr-assets.com/images/S/photo.goodreads.com/hostedimages/1380364947i/716759.jpg" alt="Drawing" style="width: 400px;"/> </center>

What If?
========================================================
What if the time machine was broken: you can only travel to the US during one decade...

<center><img src="http://cdn.playbuzz.com/cdn/275f0190-d2a7-49e1-8efa-1a761dcc2a4c/89ce8721-43e0-487b-82e7-27c53dc6d61d.jpg" alt="Drawing" style="width: 600px;"/> <img src="http://www.mancavemaster.net/wp-content/uploads/2015/08/Depositphotos_3090001_m-2015.jpg" alt="Drawing" style="width: 325px;"/></center>

Use my Shiny App!
========================================================

This app sorts state statistics from the state dataset from the `datasets` library in R. The dataset is sourced by the 1977 US Census. There are 8 available statistics:

- Population
- Income per capita
- Illiteracy Percentage
- Life Expectancy in years
- Murder Rate per 100,000 people
- HS Graduation Rate
- Average # of Days Below Freezing
- Area in square miles

Example
===
<style>
  .rChart {
    display: block;
    height: 400px;
  }
</style>
Lowest 7 states by "Murder Rate per 100,000 people"

<iframe src=' SMT1 Project-figure/unnamed-chunk-2-1.html ' scrolling='no' frameBorder='0' seamless class='rChart polycharts ' id=iframe- chart73461cf3de4c ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>


