# README

### Burger Builder application

##### Create rails react webpacker monolith application :

```bash
rails new app-name --webpack=react --database=postgresql -T
```

##### Styles options:
* webpack 3 css modules usage (className={classes.cssClass})
* in rails assets add css class and use as following (className='cssClass')

##### Run application
```bash
bundle
rails db:create
rails db:migrate
rails db:seed
foreman start
```

##### Run tests
```bash
rspec
yarn test
```

TODO
* repalce firebase backend to rails