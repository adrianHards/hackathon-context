<p align="center">
  <!-- version -->
  <img src='https://badgen.net/badge/Ruby/v3.1.2/blue' />
  <img src='https://badgen.net/badge/Rails/v7.0.3.1/blue' />
</p>

## About
This app was developed as part of the [Hotwire](https://hotwired.dev/) themed [Rails Hackathon 2022](https://railshackathon.com/). We used [Hotwire Turbo](https://turbo.hotwired.dev/) on certain pages to negate the need for full-page reloads, for example when turning a page or translating certain sentences from a non-English language into English. 

### Click [here](https://team50.herokuapp.com/) to visit out demo. 

Please note, this app is currently only optimised for desktop use in the [Chrome](https://www.google.com/intl/en_uk/chrome/) browser. 

## Installation
We used Rails v7.0.3.1 and Ruby v3.1.2. 

```
git clone git@github.com:adrianHards/hotwire-reminder.git
cd hotwire-reminder
bundle
yarn install
bin/rails db:setup
bin/dev
```

## How to use
![image](https://user-images.githubusercontent.com/17050237/190924047-077afc85-df28-40d8-883c-c33873a394a7.png)

## Features

### Slow loading of sentences using Stimulus:
![slow-scroll](https://user-images.githubusercontent.com/93719632/192240339-53eee677-fa5d-4b12-96a4-519e5d922d8b.gif)

<br>

### Page turn, no full-page reload, using Turbo Frames:
![page-turn](https://user-images.githubusercontent.com/93719632/192240442-d8506a05-a2f5-4011-8594-7c336f31c307.gif)

<br>

### Single sentence translations and score keeping with Turbo Frames and Stimulus, respectively:
![sentence](https://user-images.githubusercontent.com/93719632/192240706-c7fc49ac-cd36-4136-ac1c-5f3523eb15cf.gif)

<p align="center">
  <img src="https://visitor-badge.laobi.icu/badge?page_id=adrianHards/hotwire-context" id="counter">
</p>
