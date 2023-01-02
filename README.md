# 📚 Ugly Clothmas

With this website, you can find an ugly christmas pull over for your next party or rent out your own to earn money.
Ruby on Rails app developed in 5 days during Le Wagon's Bootcamp by a team of 4 developers.  
CRUD, devise gem, Cloudinary API, search input and JS animations have been implemented amongst others.

<img width="500" alt="Ugly_Clothmas_home" src="https://user-images.githubusercontent.com/107474450/210255827-47ba141d-d151-48ff-816f-1a4e0403436a.png"> <img width="500" alt="Ugly_Clothmas_index" src="https://user-images.githubusercontent.com/107474450/210255890-cce914e8-3867-47d3-8a29-a1a4bf3058e7.png"> <img width="500" alt="Ugly_Clothmas_show" src="https://user-images.githubusercontent.com/107474450/210255929-14dbfb4e-d49d-47c2-853e-fb8ab1e20778.png"> <img width="500" alt="Ugly_Clothmas_new" src="https://user-images.githubusercontent.com/107474450/210255945-08301dee-368c-4337-9a59-22b6c2f54885.png">


## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
dev
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team

- [Antoine Berson](https://github.com/AntSonOne)
- [Aimeric Marchau](https://github.com/Aimeric33)
- [Charlène Nicol](https://github.com/Clerehna)
- [Georges Ryssen](https://github.com/georgesryssen)
